class RoadTripFacade
  attr_reader :id,
              :origin,
              :destination,
              :travel_time,
              :arrival_forecast

  def initialize(origin, destination)
    @id = 1
    @origin = origin
    @destination = destination
    @travel_time = time
    @arrival_forecast = forecast
  end

  def time
    RoadTrip.new(@origin, @destination).get_time
  end

  def lat_long
    Geocoding.new(@destination).latitude_longitude
  end

  def weather_data
    @weather_data ||= Weather.new(lat_long).current_weather
  end

  def forecast
    [weather_data[:currently][:temperature], weather_data[:currently][:summary]]
  end
end
