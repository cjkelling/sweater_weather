class AntipodeFacade
  attr_reader :id,
              :location_name,
              :current_summary,
              :current_temperature,
              :search_location

  def initialize(data, location, antipode_city)
    i = 0
    @id = i + 1
    @location_name = antipode_city
    @current_summary = data[:currently][:summary]
    @current_temperature = data[:currently][:temperature]
    @search_location = location
  end
end
