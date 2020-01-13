class Weather
  def initialize(lat_lng, lat_long)
    @lat_lng = lat_lng
    @lat_long = lat_long
  end

  def current_weather
    DarkSkyService.new.get_weather(@lat_lng[:lat], @lat_lng[:lng])
  end

  def current_weather_antipode
    DarkSkyService.new.get_weather(@lat_long[:lat], @lat_long[:long])
  end
end
