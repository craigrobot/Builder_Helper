class ItemListsController < ApplicationController
  
  def new
    @list = List.find(params[:list_id])
    @item_list = ItemList.new
  end

  def create
    @item_list = ItemList.new(item_list_params)
    @list = List.find(params[:list_id])
    @item_list.list = @list
    @item_list.save
    
    redirect_to new_list_item_list_path(@list)
  end

  def destroy
    @item_list = ItemList.find(params[:id])
    @item_list.destroy

    redirect_to new_list_item_list_path(@item_list.list)
  end

  private

  def item_list_params
    params.require(:item_list).permit(:item_id)
  end
end
