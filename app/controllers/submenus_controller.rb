class SubmenusController < ApplicationController
  def create
    @menu = Menu.find(params[:menu_id])
    @submenu = @menu.submenus.create(params[:submenu])
    redirect_to menu_path(@menu)
  end
  def edit
    @submenu = Submenu.find(params[:id])
  end
  def update
    @submenu = Submenu.find(params[:id])
    respond_to do |format|
      if @submenu.update_attributes(params[:submenu])
        format.html { redirect_to @submenu.menu, notice: 'Submenu was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @submenu.errors, status: :unprocessable_entity }
      end
    end
  end
  def destroy
    @submenu = Submenu.find(params[:id])
    @parent_menu = @submenu.menu
    @submenu.destroy

    respond_to do |format|
      format.html { redirect_to @parent_menu }
      format.json { head :no_content }
    end
  end
end
