class ListsController < ApplicationController
  
  def index
    @lists = List.all
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.user = current_user

    if @list.save
      redirect_to new_list_item_list_path(@list)
    else
      render :new
    end
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy

    redirect_to lists_path(@list)
  end

  def edit
  end

  private

  def list_params
    params.require(:list).permit(:project_name, :photo)
  end
end
