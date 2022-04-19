class LocationsController < ApplicationController
  require 'geocoder'

  def create
    str = "#{params[:City]}, #{params[:StateABRV]}, US"
    results = Geocoder.search(str).first.coordinates

    render json: results
  end
end
