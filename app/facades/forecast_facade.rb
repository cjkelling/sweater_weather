class ForecastFacade
  attr_reader :id,
              :current_weather,
              :hourly_weather,
              :daily_weather

  def initialize(location)
    @id = 1
    @location = location
    @current_weather = current_data
    @hourly_weather = hourly_data
    @daily_weather = daily_data
  end

  def lat_long
    Geocoding.new(@location).latitude_longitude
  end

  def weather_data
    @weather_data ||= Weather.new(lat_long).current_weather
  end

  def current_data
    CurrentWeather.new(weather_data[:currently])
  end

  def hourly_data
    weather_data[:hourly][:data].take(24).map do |data|
      HourlyWeather.new(data)
    end
  end

  def daily_data
    weather_data[:daily][:data].take(7).map do |data|
      DailyWeather.new(data)
    end
  end
end
