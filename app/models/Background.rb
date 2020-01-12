class Background
  def initialize(location)
    @location = location
  end

  def get_background
    FlickrService.new.get_image_url(@location)
  end
end
