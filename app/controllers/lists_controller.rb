class ListsController < ApplicationController
  def index
    @lists = List.all
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.user = current_user
    @list.save
    redirect_to lists_path
  end

  private

  def list_params
    params.require(:list).permit(:project_name)
  end
end
