class StoresController < ApplicationController
  
  def index
    @stores = Store.joins({items: :lists}).where(lists: {id: params[:list_id]}, item_stores: {availability: true}).uniq

    @list = List.find(params[:list_id])

    @markers = @stores.geocoded.map do |store|
      {
        lat: store.latitude,
        lng: store.longitude
      }
    end
  end
end
