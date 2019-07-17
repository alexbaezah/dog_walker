class MapsController < ApplicationController
  def index
    @dog_walkings = DogWalking.near(
      current_user.address,
      100,
      units: :km
     )
    @hash2 = Gmaps4rails.build_markers(@dog_walkings) do |dogw, marker2|
      marker2.lat dogw.latitude
      marker2.lng dogw.longitude
    end
   
  end
end
 
 
 

