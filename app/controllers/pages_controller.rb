class PagesController < ApplicationController
  def index
    @items = Item.all
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy

    redirect_to root_path
  end

end
