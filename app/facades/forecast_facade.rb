class ForecastFacade
  attr_reader :id,
              :curent_time,
              :current_summary,
              :current_icon,
              :current_temperature,
              :current_apparent_temperature,
              :current_humidity,
              :current_uv_index,
              :current_visability,
              :current_percipitation_probability,
              :current_percipitation_type,
              :hourly_summary,
              :hourly_icon,
              :hourly_percipitation_probability,
              :hourly_percipitation_type,
              :daily_summary,
              :daily_icon,
              :daily_percipitation_probability,
              :daily_percipitation_type,
              :daily_temperature_low,
              :daily_temperature_high

  def initialize(data)
    @id = nil
    @curent_time = data[:currently][:time]
    @current_summary = data[:currently][:summary]
    @current_icon = data[:currently][:icon]
    @current_temperature = data[:currently][:temperature]
    @current_apparent_temperature = data[:currently][:apparentTemperature]
    @current_humidity = data[:currently][:humidity]
    @current_uv_index = data[:currently][:uvIndex]
    @current_visability = data[:currently][:visibility]
    @current_percipitation_probability = data[:currently][:precipProbability]
    @current_percipitation_type = data[:currently][:precipType]

    @hourly_summary = data[:hourly][:data][0][:summary]
    @hourly_icon = data[:hourly][:data][0][:icon]
    @hourly_percipitation_probability = data[:hourly][:data][0][:precipProbability]
    @hourly_percipitation_type = data[:hourly][:data][0][:precipType]
    @hourly_temperature = data[:hourly][:data][0][:temperature]

    @daily_summary = data[:daily][:data][0][:summary]
    @daily_icon = data[:daily][:data][0][:icon]
    @daily_percipitation_probability = data[:daily][:data][0][:precipProbability]
    @daily_percipitation_type = data[:daily][:data][0][:precipType]
    @daily_temperature_low = data[:daily][:data][0][:temperatureLow]
    @daily_temperature_high = data[:daily][:data][0][:temperatureHigh]
  end
end
