class CitiesController < ApplicationController
  def index
  @cities = City.where.not(latitude: nil, longitude: nil)
    @markers = @cities.map do |city|
      {
        lat: city.latitude,
        lng: city.longitude
      }
    end
  end
end
