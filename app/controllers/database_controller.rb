class DatabaseController < ApplicationController
  include DatabaseHelper

  def index
    connect(DB_SERVER,DB_USER,DB_PASSWORD,BCV)
    query "select * from sync_bill2bcv_t",false
    @when_bcv_updated = @result[0][1]
    respond_to do |format|
      format.html
    end
  end
  def create
    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def destroy
  end
end
