class InputsController < ApplicationController
  def index
    @inputs = Input.all

    respond_to do |format|
      format.html
      format.json { render json: @inputs }
    end
  end
  def new
    @input = Input.new
  end
  def create
    @asset = current_user.assets.new(params[:input][:asset])
    if @asset.save
      @input = @asset.inputs.new
      @input.description = params[:input][:description]
      if @input.save
        redirect_to inputs_path
      else
        render 'new'
      end
    else
      render 'new'
    end
  end
end
