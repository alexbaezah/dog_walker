class GeocoderController < ApplicationController
  def finaddress
   @address = Geocoder.address([params[:latitude], params[:longitude]])
  end
end
