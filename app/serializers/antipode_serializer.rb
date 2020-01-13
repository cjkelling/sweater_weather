class AntipodeSerializer
  include FastJsonapi::ObjectSerializer

  attributes :location_name,
             :current_summary,
             :current_temperature,
             :search_location
end
