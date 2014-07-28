class SubmenusController < ApplicationController
  def create
    @menu = Menu.find(params[:menu_id])
    @submenu = @menu.submenus.create(params[:submenu])
    redirect_to menu_path(@menu)
  end
end
