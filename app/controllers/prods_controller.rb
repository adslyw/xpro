class ProdsController < ApplicationController
  # GET /prods
  # GET /prods.json
  def index
    @prods = Prod.page(params[:page]).per_page(20)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @prods }
    end
  end

  # GET /prods/1
  # GET /prods/1.json
  def show
    @prod = Prod.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @prod }
    end
  end
end
