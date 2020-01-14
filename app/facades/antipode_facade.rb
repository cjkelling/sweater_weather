class AntipodeFacade
  attr_reader :id,
              :location_name,
              :forecast,
              :search_location

  def initialize(location, antipode_city)
    i = 0
    @id = i + 1
    @location_name = antipode_city
    @search_location = location
    @forecast = {
      'current_summary' => data[:currently][:summary],
      'current_temperature' => data[:currently][:temperature]
    }
  end

  def data
    Forecast.new(0, antipode_lat_long).get_antipode_forecast
  end

  def antipode_lat_long
    Antipode.new(search_location).get_antipode
  end
end
