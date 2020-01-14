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
              :hourly_time,
              :hourly_temperature,
              :hourly_time_2,
              :hourly_temperature_2,
              :hourly_time_3,
              :hourly_temperature_3,
              :hourly_time_4,
              :hourly_temperature_4,
              :hourly_time_5,
              :hourly_temperature_5,
              :hourly_time_6,
              :hourly_temperature_6,
              :hourly_time_7,
              :hourly_temperature_7,
              :hourly_time_8,
              :hourly_temperature_8,
              :daily_date,
              :daily_icon,
              :daily_percipitation_type,
              :daily_percipitation_probability,
              :daily_temperature_low,
              :daily_temperature_high,
              :daily_date_2,
              :daily_icon_2,
              :daily_percipitation_type_2,
              :daily_percipitation_probability_2,
              :daily_temperature_low_2,
              :daily_temperature_high_2,
              :daily_date_3,
              :daily_icon_3,
              :daily_percipitation_type_3,
              :daily_percipitation_probability_3,
              :daily_temperature_low_3,
              :daily_temperature_high_3,
              :daily_date_4,
              :daily_icon_4,
              :daily_percipitation_type_4,
              :daily_percipitation_probability_4,
              :daily_temperature_low_4,
              :daily_temperature_high_4,
              :daily_date_5,
              :daily_icon_5,
              :daily_percipitation_type_5,
              :daily_percipitation_probability_5,
              :daily_temperature_low_5,
              :daily_temperature_high_5

  def initialize(data)
    @id = nil
    @curent_time = Time.at(data[:currently][:time]).in_time_zone('MST')
    @current_summary = data[:currently][:summary]
    @current_icon = data[:currently][:icon]
    @current_temperature = data[:currently][:temperature]
    @current_apparent_temperature = data[:currently][:apparentTemperature]
    @current_humidity = data[:currently][:humidity]
    @current_uv_index = data[:currently][:uvIndex]
    @current_visability = data[:currently][:visibility]
    @current_percipitation_probability = data[:currently][:precipProbability]
    @current_percipitation_type = data[:currently][:precipType]

    @hourly_time = Time.at(data[:hourly][:data][0][:time]).in_time_zone('MST')
    @hourly_temperature = data[:hourly][:data][0][:temperature]

    @hourly_time_2 = Time.at(data[:hourly][:data][1][:time]).in_time_zone('MST')
    @hourly_temperature_2 = data[:hourly][:data][1][:temperature]

    @hourly_time_3 = Time.at(data[:hourly][:data][2][:time]).in_time_zone('MST')
    @hourly_temperature_3 = data[:hourly][:data][2][:temperature]

    @hourly_time_4 = Time.at(data[:hourly][:data][3][:time]).in_time_zone('MST')
    @hourly_temperature_4 = data[:hourly][:data][3][:temperature]

    @hourly_time_5 = Time.at(data[:hourly][:data][4][:time]).in_time_zone('MST')
    @hourly_temperature_5 = data[:hourly][:data][4][:temperature]

    @hourly_time_6 = Time.at(data[:hourly][:data][5][:time]).in_time_zone('MST')
    @hourly_temperature_6 = data[:hourly][:data][5][:temperature]

    @hourly_time_7 = Time.at(data[:hourly][:data][6][:time]).in_time_zone('MST')
    @hourly_temperature_7 = data[:hourly][:data][5][:temperature]

    @hourly_time_8 = Time.at(data[:hourly][:data][7][:time]).in_time_zone('MST')
    @hourly_temperature_8 = data[:hourly][:data][7][:temperature]

    @daily_date = Time.at(data[:daily][:data][0][:time]).in_time_zone('MST')
    @daily_icon = data[:daily][:data][0][:icon]
    @daily_percipitation_type = data[:daily][:data][0][:precipType]
    @daily_percipitation_probability = data[:daily][:data][0][:precipProbability]
    @daily_temperature_low = data[:daily][:data][0][:temperatureLow]
    @daily_temperature_high = data[:daily][:data][0][:temperatureHigh]

    @daily_date_2 = Time.at(data[:daily][:data][1][:time]).in_time_zone('MST')
    @daily_icon_2 = data[:daily][:data][1][:icon]
    @daily_percipitation_type_2 = data[:daily][:data][1][:precipType]
    @daily_percipitation_probability_2 = data[:daily][:data][1][:precipProbability]
    @daily_temperature_low_2 = data[:daily][:data][1][:temperatureLow]
    @daily_temperature_high_2 = data[:daily][:data][1][:temperatureHigh]

    @daily_date_3 = Time.at(data[:daily][:data][2][:time]).in_time_zone('MST')
    @daily_icon_3 = data[:daily][:data][2][:icon]
    @daily_percipitation_type_3 = data[:daily][:data][2][:precipType]
    @daily_percipitation_probability_3 = data[:daily][:data][2][:precipProbability]
    @daily_temperature_low_3 = data[:daily][:data][2][:temperatureLow]
    @daily_temperature_high_3 = data[:daily][:data][2][:temperatureHigh]

    @daily_date_4 = Time.at(data[:daily][:data][3][:time]).in_time_zone('MST')
    @daily_icon_4 = data[:daily][:data][3][:icon]
    @daily_percipitation_type_4 = data[:daily][:data][3][:precipType]
    @daily_percipitation_probability_4 = data[:daily][:data][3][:precipProbability]
    @daily_temperature_low_4 = data[:daily][:data][3][:temperatureLow]
    @daily_temperature_high_4 = data[:daily][:data][3][:temperatureHigh]

    @daily_date_5 = Time.at(data[:daily][:data][5][:time]).in_time_zone('MST')
    @daily_icon_5 = data[:daily][:data][4][:icon]
    @daily_percipitation_type_5 = data[:daily][:data][4][:precipType]
    @daily_percipitation_probability_5 = data[:daily][:data][4][:precipProbability]
    @daily_temperature_low_5 = data[:daily][:data][4][:temperatureLow]
    @daily_temperature_high_5 = data[:daily][:data][4][:temperatureHigh]
  end
end
