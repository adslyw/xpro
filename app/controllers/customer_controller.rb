class CustomerController < ApplicationController
  def info
    if params[:service_id]
      @customer = ServiceRelation.find(params[:service_id])
    else
      
    end
  end
end
