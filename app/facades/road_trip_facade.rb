class RoadTripFacade
  attr_reader :id,
              :origin,
              :destination,
              :travel_time,
              :arrival_forecast

  def initialize(origin, destination, travel_time, arrival_forecast)
    @id = 1
    @origin = origin
    @destination = destination
    @travel_time = travel_time
    @arrival_forecast = [
      arrival_forecast[:currently][:temperature],
      arrival_forecast[:currently][:summary]
    ]
  end
end
