class Maps2Controller < ApplicationController
  def index
    @dog_walkings = DogWalking.all
    @hash = Gmaps4rails.build_markers(@dog_walkings) do |store, marker|
      marker.lat store.latitude
      marker.lng store.longitude
    end
   
  end
end
