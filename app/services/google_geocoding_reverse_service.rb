class GoogleGeocodingReverseService
  def get_city(lat_long)
    response = conn.get('api/geocode/json') do |req|
      req.params['latlng'] = lat_long.values.join(', ')
    end
    data = JSON.parse(response.body, symbolize_names: true)
    data[:results][0][:formatted_address]
  end

  private

  def conn
    Faraday.new(url: 'https://maps.googleapis.com/maps') do |faraday|
      faraday.headers['Content-Type'] = 'application/json'
      faraday.headers['Accept'] = 'application/json'
      faraday.params['key'] = ENV['GOOGLE_API_KEY']
      faraday.adapter Faraday.default_adapter
    end
  end
end
