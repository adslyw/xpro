class AssetsController < ApplicationController
  # GET /assets
  # GET /assets.json
  before_filter :authenticate_user!
  def index
    @assets = current_user.assets.order('created_at DESC').page(params[:page]).per_page(15)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @assets }
    end
  end

  # GET /assets/1
  # GET /assets/1.json
  def show
    @asset = current_user.assets.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @asset }
    end
  end

  # GET /assets/new
  # GET /assets/new.json
  def new
    @asset = current_user.assets.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @asset }
    end
  end

  # GET /assets/1/edit
  def edit
    @asset = current_user.assets.find(params[:id])
  end

  # POST /assets
  # POST /assets.json
  def create
    @asset = current_user.assets.new(params[:asset])

    respond_to do |format|
      if @asset.save
        format.html { redirect_to assets_path, notice: 'Asset was successfully created.' }
        format.json { render json: @asset, status: :created, location: @asset }
      else
        format.html { render action: "new" }
        format.json { render json: @asset.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /assets/1
  # PUT /assets/1.json
  def update
    @asset = current_user.assets.find(params[:id])

    respond_to do |format|
      if @asset.update_attributes(params[:asset])
        format.html { redirect_to @asset, notice: 'Asset was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @asset.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assets/1
  # DELETE /assets/1.json
  def destroy
    @asset = current_user.assets.find(params[:id])
    @asset.destroy

    respond_to do |format|
      format.html { redirect_to assets_url }
      format.json { head :no_content }
    end
  end

  def get
    asset = current_user.assets.find_by_id(params[:id])
    if asset
      send_file asset.uploaded_file.path,
       :type => asset.uploaded_file_content_type
    else
    flash[:danger] = "Don't be cheeky! Mind your own assets!"
    redirect_to assets_path
    end
  end
  def add_description
    @asset = current_user.assets.find_by_id(params[:id])
    @input = Input.new
    if @asset
      respond_to do |format|
        format.html
      end
    else
      flash[:danger] = "Don't be cheeky! Mind your own assets!"
      redirect_to assets_path
    end
  end
  def input
    @asset = current_user.assets.find_by_id(params[:input][:asset_id])
    @input = @asset.inputs.new(:description => params[:input][:description])
    if @input.save
      flash.now[:danger] = "ok"
      redirect_to assets_path
    else
      flash[:danger] = "Don't be cheeky! Mind your own assets!"
      redirect_to assets_path
    end
  end
end
