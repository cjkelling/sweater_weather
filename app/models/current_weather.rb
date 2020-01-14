class CurrentWeather
  def initialize(data)
    @time = Time.at(data[:time]).in_time_zone('MST').strftime('%I:%M%p')
    @summary = data[:summary]
    @icon = data[:icon]
    @temperature = data[:temperature]
    @apparent_temperature = data[:apparentTemperature]
    @humidity = data[:humidity]
    @uv_index = data[:uvIndex]
    @visability = data[:visibility]
    @percipitation_probability = data[:precipProbability]
    @percipitation_type = data[:precipType]
  end
end
