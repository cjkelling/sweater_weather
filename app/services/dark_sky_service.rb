class DarkSkyService
  def get_weather(latitude, longitude)
    response = conn.get("/forecast/#{ENV['DARK_SKY_API_KEY']}/#{latitude},#{longitude}")
    JSON.parse(response.body, symbolize_names: true)
  end

  private

  def conn
    Faraday.new(url: 'https://api.darksky.net') do |faraday|
      faraday.headers['Content-Type'] = 'application/json'
      faraday.headers['Accept'] = 'application/json'
      faraday.adapter Faraday.default_adapter
    end
  end
end
