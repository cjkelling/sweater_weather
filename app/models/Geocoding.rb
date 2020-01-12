class Geocoding
  def initialize(location)
    @location = location
  end

  def latitude_longitude
    GoogleGeocodingService.new.get_latitude_longitude(@location)
  end
end
