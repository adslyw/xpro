class CustomerController < ApplicationController
  def info
    if params[:service_id]
      begin
        @customer = ServiceRelation.find(params[:service_id])
      rescue ActiveRecord::RecordNotFound
        flash[:warning] = "Service id do not exist!"
        redirect_to :action => 'info'
      end
    end
  end
end
