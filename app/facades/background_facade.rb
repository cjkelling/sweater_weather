class BackgroundFacade
  attr_reader :id,
              :background

  def initialize(location)
    @id = 1
    @location = location
    @background = image
  end

  def lat_long
    Geocoding.new(@location).latitude_longitude
  end

  def image
    Background.new(lat_long).get_background
  end
end
