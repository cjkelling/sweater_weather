class RoadTrip
  def initialize(origin, destination)
    @origin = origin
    @destination = destination
  end

  def get_time
    GoogleMapsService.new.directions(@origin, @destination)[:routes][0][:legs][0][:duration][:text]
  end
end
