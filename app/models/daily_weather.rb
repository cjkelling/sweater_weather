class DailyWeather
  def initialize(data)
    @date = Time.at(data[:time]).in_time_zone('MST').to_date
    @icon = data[:icon]
    @percip_type = data[:precipType]
    @percip_probability = data[:precipProbability]
    @low_temp = data[:temperatureLow]
    @high_temp = data[:temperatureHigh]
  end
end
