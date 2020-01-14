class Background
  def initialize(lat_long)
    @latitude = lat_long[:lat]
    @longitude = lat_long[:lng]
  end

  def get_background
    FlickrService.new.get_image_url(@latitude, @longitude)
  end
end
