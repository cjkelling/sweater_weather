class Weather
  def initialize(lat_long)
    @latitude = lat_long[:lat]
    @longitude = lat_long[:lng]
  end

  def current_weather
    DarkSkyService.new.get_weather(@latitude, @longitude)
  end
end
