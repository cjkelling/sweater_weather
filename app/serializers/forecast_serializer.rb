class ForecastSerializer
  include FastJsonapi::ObjectSerializer

  attributes :id,
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
             :daily_temperature_low,
             :daily_temperature_high,
             :daily_percipitation_probability,
             :daily_percipitation_type
end
