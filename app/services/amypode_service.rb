class AmypodeService
  def get_antipode_city(lat, long)
    response = conn.get('api/v1/antipodes') do |req|
      req.params['lat'] = lat
      req.params['long'] = long
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  private

  def conn
    Faraday.new(url: 'http://amypode.herokuapp.com') do |faraday|
      faraday.headers['api_key'] = ENV['AMYPODE_API_KEY']
      faraday.adapter Faraday.default_adapter
    end
  end
end
