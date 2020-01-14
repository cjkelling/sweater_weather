class HourlyWeather
  def initialize(data)
    @time = Time.at(data[:time]).in_time_zone('MST').strftime('%I:%M%p')
    @temperature = data[:temperature]
  end
end
