require 'rails_helper'

describe 'Get forecast data' do
  describe 'Use the city and state from the GET request to retrieve the lat and long for the city' do
    describe 'Retrieve forecast data from the Darksky API using the lat and long' do
      it 'Renders JSON data for the forecast in the city' do
        get '/api/v1/forecast?location=denver,co'

        expect(response).to be_successful

        expect(:id).to_not be_empty
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
        expect(:hourly_time).to_not be_empty
        expect(:hourly_temperature).to_not be_empty
        expect(:hourly_time_2).to_not be_empty
        expect(:hourly_temperature_2).to_not be_empty
        expect(:hourly_time_3).to_not be_empty
        expect(:hourly_temperature_3).to_not be_empty
        expect(:hourly_time_4).to_not be_empty
        expect(:hourly_temperature_4).to_not be_empty
        expect(:hourly_time_5).to_not be_empty
        expect(:hourly_temperature_5).to_not be_empty
        expect(:hourly_time_6).to_not be_empty
        expect(:hourly_temperature_6).to_not be_empty
        expect(:hourly_time_7).to_not be_empty
        expect(:hourly_temperature_7).to_not be_empty
        expect(:hourly_time_8).to_not be_empty
        expect(:hourly_temperature_8).to_not be_empty
        expect(:daily_date).to_not be_empty
        expect(:daily_icon).to_not be_empty
        expect(:daily_percipitation_type).to_not be_empty
        expect(:daily_percipitation_probability).to_not be_empty
        expect(:daily_temperature_low).to_not be_empty
        expect(:daily_temperature_high).to_not be_empty
        expect(:daily_date_2).to_not be_empty
        expect(:daily_icon_2).to_not be_empty
        expect(:daily_percipitation_type_2).to_not be_empty
        expect(:daily_percipitation_probability_2).to_not be_empty
        expect(:daily_temperature_low_2).to_not be_empty
        expect(:daily_temperature_high_2).to_not be_empty
        expect(:daily_date_3).to_not be_empty
        expect(:daily_icon_3).to_not be_empty
        expect(:daily_percipitation_type_3).to_not be_empty
        expect(:daily_percipitation_probability_3).to_not be_empty
        expect(:daily_temperature_low_3).to_not be_empty
        expect(:daily_temperature_high_3).to_not be_empty
        expect(:daily_date_4).to_not be_empty
        expect(:daily_icon_4).to_not be_empty
        expect(:daily_percipitation_type_4).to_not be_empty
        expect(:daily_percipitation_probability_4).to_not be_empty
        expect(:daily_temperature_low_4).to_not be_empty
        expect(:daily_temperature_high_4).to_not be_empty
        expect(:daily_date_5).to_not be_empty
        expect(:daily_icon_5).to_not be_empty
        expect(:daily_percipitation_type_5).to_not be_empty
        expect(:daily_percipitation_probability_5).to_not be_empty
        expect(:daily_temperature_low_5).to_not be_empty
        expect(:daily_temperature_high_5).to_not be_empty
      end

      it 'Returns the url to an appropriate background image for a location' do
        get '/api/v1/backgrounds?location=denver,co'

        expect(response).to be_successful

        expect(response.body).to include('https://live.staticflickr.com')
      end
    end
  end
end
