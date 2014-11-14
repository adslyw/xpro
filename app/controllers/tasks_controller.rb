class TasksController < ApplicationController
  def index
    @tasks = Task.all

    respond_to do |format|
      format.html
      format.json { render json: @tasks }
    end
  end
  def excute(task)
    task_user = task.input.asset.user
    output_file_name = "#{Rails.root}/tmp/tmpoutfiles/#{task_user.name}_#{task.input.id}_#{Time.now.to_s(:number)}.txt"
    output_file = File.new(output_file_name,'w+')
    out_asset = task_user.assets.new
    input_array = open(task.input.asset.uploaded_file.path,'r') do |f|
      f.readlines.map{|line| line.chop!}
    end
    output_array = ServiceRelation.where(:service_id => input_array).map{|s| s.info}
    open(output_file_name,'a') do |f|
      f.print output_array.map{|a| a.keys.join(",")}.first,"\r\n"
       output_array.map{|a| a.values.join(",")}.each do |o|
         f.print o,"\r\n"
       end
    end
    out_asset.uploaded_file = output_file
    if out_asset.save
      output =  out_asset.outputs.new
      if output.save
        task.output = output
        task.state = 2
        if task.save
          flash[:info] = "Task[#{task.id} finished successfuly.]"
        else
          flash[:error] = "Task[#{task.id} finished unsuccessfuly.]"
        end
      else

      end
    else

    end
  end
  def run
    task = Task.find(params[:id])
    if task
      task.update_attributes(state: 1)
      excute(task).delay
      flash[:info] = "Task[#{task.id}] being excuting backend now."
      redirect_to tasks_path
    else
      flash[:error] = "Error to find task[#{params[:id]}]."
      redirect_to tasks_path
    end
  end
end
