class StoresController < ApplicationController
  
  def index
    @lat = params[:lat] || 45.519396941418556
    @long = params[:long] || -73.55877731427543

    @stores = Store.near([@lat, @long]).joins({items: :lists}).where(lists: {id: params[:list_id]}, item_stores: {availability: true}).uniq

    @list = List.find(params[:list_id])

    @markers = @stores.map do |store|
      { lat: store.latitude, lng: store.longitude, infoWindow: render_to_string(partial: "stores/info_window", locals: { store: store }) }
    end
  end
end
