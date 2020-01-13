class Forecast
  def initialize(location)
    @location = location
  end

  def get_weather_forecast
    lat_long = Geocoding.new(@location).latitude_longitude
    Weather.new(lat_long).current_weather
  end
end
