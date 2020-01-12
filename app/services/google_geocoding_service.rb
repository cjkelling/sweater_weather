class GoogleGeocodingService
  def get_latitude_longitude(location)
    response = conn.get('api/geocode/json') do |req|
      req.params['address'] = location
    end
    data = JSON.parse(response.body, symbolize_names: true)
    data[:results].first[:geometry][:location]
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
