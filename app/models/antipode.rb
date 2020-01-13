class Antipode
  def initialize(location)
    @location = location
  end

  def get_antipode
    lat_long = Geocoding.new(@location).latitude_longitude
    latitude = lat_long[:lat]
    longitude = lat_long[:lng]
    AmypodeService.new.get_antipode_city(latitude, longitude)
  end
end
