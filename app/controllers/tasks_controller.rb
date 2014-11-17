class TasksController < ApplicationController
  def index
    @tasks = Task.all

    respond_to do |format|
      format.html
      format.json { render json: @tasks }
    end
  end
  def run
    task = Task.find(params[:id])
    if task
      task.update_attributes(state: 1)
      task.delay.excute
      flash[:info] = "Task[#{task.id}] being excuting backend now."
      redirect_to tasks_path
    else
      flash[:error] = "Error to find task[#{params[:id]}]."
      redirect_to tasks_path
    end
  end
end
