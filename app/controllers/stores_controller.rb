class StoresController < ApplicationController
  def index
    @stores = Store.all
    @items_available = ItemStore.where(availability: true)
  end
end
