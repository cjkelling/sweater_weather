require 'rails_helper'

describe 'Get forecast data' do
  describe 'Use the city and state from the GET request to retrieve the lat and long for the city' do
    describe 'Retrieve forecast data from the Darksky API using the lat and long' do
      it 'Renders JSON data for the forecast in the city' do
        get '/api/v1/forecast?location=denver,co'

        expect(response).to be_successful

        expect(:id).to_not be_empty
        expect(:current_weather).to_not be_empty
        expect(:hourly_weather).to_not be_empty
        expect(:daily_weather).to_not be_empty
      end

      it 'Returns the url to an appropriate background image for a location' do
        get '/api/v1/backgrounds?location=denver,co'

        expect(response).to be_successful

        expect(response.body).to include('https://live.staticflickr.com')
      end
    end
  end
end
