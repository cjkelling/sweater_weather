require 'rails_helper'

describe 'Google Geocoding API' do
  it 'Uses the city and state from the GET request to retrieve the lat and long for the city' do
    get '/api/v1/forecast?location=denver,co'

    expect(response).to be_successful
  end
end
