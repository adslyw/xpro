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
  def bill
    if params[:pay_type] == '2'
      @fees = OcsFee.where(:user_id => params[:user_id])
    else
      @fees = GsmFee.where(:user_id => params[:user_id])
    end
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fees }
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
