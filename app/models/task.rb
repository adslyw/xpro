class Task < ActiveRecord::Base
  belongs_to :input
  belongs_to :output
  attr_accessible :description, :state
  def excute
    task_user = self.input.asset.user
    output_file_name = "#{Rails.root}/tmp/tmpoutfiles/#{task_user.name}_#{self.input.id}_#{Time.now.to_s(:number)}.txt"
    output_file = File.new(output_file_name,'w+')
    out_asset = task_user.assets.new
    input_array = open(self.input.asset.uploaded_file.path,'r') do |f|
      f.readlines.map{|line| line.chop!}.each_slice(500).to_a
    end
    output_array = []
    input_array.each do |a|
      output_array.push ServiceRelation.where(:service_id => a).map{|s| s.info}
    end
    open(output_file_name,'a') do |f|
      f.print output_array.flatten.map{|a| a.keys.join(",")}.first,"\r\n"
       output_array.flatten.map{|a| a.values.join(",")}.each do |o|
         f.print o,"\r\n"
       end
    end
    out_asset.uploaded_file = output_file
    if out_asset.save
      output =  out_asset.outputs.new
      if output.save
        self.output = output
        self.state = 2
        self.save
      else
      end
    else
    end
  end
end
