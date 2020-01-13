class Geocoding
  def initialize(location, lat_long)
    @location = location
    @lat_long = lat_long
  end

  def latitude_longitude
    GoogleGeocodingService.new.get_latitude_longitude(@location)
  end

  def reverse_lookup
    GoogleGeocodingReverseService.new.get_city(@lat_long[:data][:attributes])
  end
end
