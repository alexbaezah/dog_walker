class Maps2Controller < ApplicationController
  def index
    @users = User.near(
      current_dog_walking.address,
      100,
      units: :km
     )
    @hash = Gmaps4rails.build_markers(@users) do |owner, marker|
      marker.lat owner.latitude
      marker.lng owner.longitude
      marker.infowindow owner.name
    end
    
  end
end