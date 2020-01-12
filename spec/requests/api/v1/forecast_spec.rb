require 'rails_helper'

describe 'Get forecast data' do
  describe 'Use the city and state from the GET request to retrieve the lat and long for the city' do
    describe 'Retrieve forecast data from the Darksky API using the lat and long' do
      it 'Renders JSON data for the forecast in the city' do
        get '/api/v1/forecast?location=denver,co'

        expect(response).to be_successful

        expect(:curent_time).to_not be_empty
        expect(:current_summary).to_not be_empty
        expect(:current_icon).to_not be_empty
        expect(:current_temperature).to_not be_empty
        expect(:current_apparent_temperature).to_not be_empty
        expect(:current_humidity).to_not be_empty
        expect(:current_uv_index).to_not be_empty
        expect(:current_visability).to_not be_empty
        expect(:current_percipitation_probability).to_not be_empty
        expect(:current_percipitation_type).to_not be_empty

        expect(:hourly_summary).to_not be_empty
        expect(:hourly_icon).to_not be_empty
        expect(:hourly_percipitation_probability).to_not be_empty
        expect(:hourly_percipitation_type).to_not be_empty

        expect(:daily_summary).to_not be_empty
        expect(:daily_icon).to_not be_empty
        expect(:daily_percipitation_probability).to_not be_empty
        expect(:daily_percipitation_type).to_not be_empty
        expect(:daily_temperature_low).to_not be_empty
        expect(:daily_temperature_high).to_not be_empty
      end

      it 'Returns the url to an appropriate background image for a location' do
        get '/api/v1/backgrounds?location=denver,co'

        expect(response).to be_successful
      end
    end
  end
end
