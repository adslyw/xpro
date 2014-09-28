class CustomerController < ApplicationController
  def info
    if params[:service_id]
      begin
        @customer = ServiceRelation.includes(:service_kind,
        :service_status,
        :prod,:dealer,
        :developer,
        :area,
        :ocs_relation,
        :customer).find(params[:service_id])
      rescue ActiveRecord::RecordNotFound
        flash[:warning] = "Service id do not exist!"
        redirect_to :action => 'info'
      end
    end
  end
  def info_by_prefix
    if params[:service_id_prefix]
      begin
        @customers = ServiceRelation.includes(:service_kind,
        :service_status,
        :prod,:dealer,
        :developer,
        :area,
        :ocs_relation,
        :customer).where("service_id LIKE :prefix",prefix: "#{params[:service_id_prefix]}%")
      rescue ActiveRecord::RecordNotFound
        flash[:warning] = "Service id do not exist!"
        redirect_to :action => 'info'
      end
    end
  end
end
