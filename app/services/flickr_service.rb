class FlickrService
  def get_image_url(lat, lon)
    response = conn.get('services/rest/') do |req|
      req.params['method'] = 'flickr.photos.search'
      req.params['api_key'] = ENV['FLICKR_API_KEY']
      req.params['format'] = 'json'
      req.params['nojsoncallback'] = 1
      req.params['lat'] = lat
      req.params['lon'] = lon
      req.params['geo_context'] = 2
      req.params['extras'] = 'url_o'
    end
    data = JSON.parse(response.body, symbolize_names: true)
    data[:photos][:photo][0][:url_o]
  end

  private

  def conn
    Faraday.new(url: 'https://api.flickr.com') do |faraday|
      faraday.headers['Content-Type'] = 'application/json'
      faraday.headers['Accept'] = 'application/json'
      faraday.adapter Faraday.default_adapter
    end
  end
end
