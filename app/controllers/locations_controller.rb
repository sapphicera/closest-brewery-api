class LocationsController < ApplicationController
  require 'geocoder'

  def index
    locations = Location.all
    render json: locations.as_json
  end

  def create
    str = "#{params[:City]}, #{params[:StateABRV]}, US"
    results = Geocoder.search(str).first.coordinates

    render json: results
  end
end
