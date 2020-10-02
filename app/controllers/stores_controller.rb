class StoresController < ApplicationController
  
  def index
    @stores = Store.joins({items: :lists}).where(lists: {id: params[:list_id]}, item_stores: {availability: true}).uniq

    @list = List.find(params[:list_id])

    @markers = @stores.map do |store|
      { lat: store.latitude, lng: store.longitude, infoWindow: render_to_string(partial: "stores/info_window", locals: { store: store }) }
    end
  end
end
