class Forecast
  def initialize(location, lat_long)
    @location = location
    @lat_long = lat_long
  end

  def get_weather_forecast
    lat_long = Geocoding.new(@location).latitude_longitude
    Weather.new(lat_long, 0).current_weather
  end

  def get_antipode_forecast
    Weather.new(0, @lat_long[:data][:attributes]).current_weather_antipode
  end
end
