class DatabaseController < ApplicationController
  include DatabaseHelper

  def index
    @when_bcv_updated = Sync.first.item_value
    respond_to do |format|
      format.html
    end
  end
  def mkdblink
    make_dblink
    redirect_to bcv_path
  end
  def create
    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def destroy
  end
end
