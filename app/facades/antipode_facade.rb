class AntipodeFacade
  attr_reader :id,
              :location_name,
              :current_summary,
              :current_temperature,
              :search_location

  def initialize(data, location)
    i = 0
    @id = i + 1
    @location_name = 0
    @current_summary = data[:currently][:summary]
    @current_temperature = data[:currently][:temperature]
    @search_location = location
  end
end
