class MapsController < ApplicationController
  def index
    @users = User.all
    @hash = Gmaps4rails.build_markers(@users) do |store, marker|
      marker.lat store.latitude
      marker.lng store.longitude
    end
    
  end
end