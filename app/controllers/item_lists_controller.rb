class ItemListsController < ApplicationController
  def new
    @list = List.find(params[:list_id])
    @item_list = ItemList.new
  end

  def create
    @item_list = ItemList.new(item_list_params)
    # we need `restaurant_id` to associate review with corresponding restaurant
    @list = List.find(params[:list_id])
    @item_list.list = @list
    @item_list.save
    redirect_to new_list_item_list_path(@list)
  end

  private

  def item_list_params
    params.require(:item_list).permit(:item_id)
  end
end
