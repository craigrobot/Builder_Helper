class ListsController < ApplicationController
  def new
    @list = List.new
  end

  def create
    @list = List.new(list_param)
    @list.user = current_user

    if @list.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  private

  def list_param
    params.require(:list).permit(:project_name)
  end
end
