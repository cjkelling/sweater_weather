require 'rails_helper'

describe 'Road Trip' do
  describe 'User posts their origin, destination, and api key' do
    it 'A successful request returns the origin, destination, travel time, and arrival forecast' do
      post '/api/v1/users?email=whatever@example.com;password=password;password_confirmation=password'
      post '/api/v1/sessions?email=whatever@example.com;password=password'

      user = User.last

      post "/api/v1/road_trip?origin=Denver,CO;destination=Pueblo,CO;api_key=#{user.api_key}"

      expect(response).to be_successful

      expect(:origin).to eq('denver')
      expect(:destination).to eq('pueblo')
      expect(:travel_time).to_not be_empty
      expect(:arrival_forecast).to_not be_empty
    end

    it 'If no API key or an incorrect key is provided return 401 (Unauthorized)' do
      post '/api/v1/users?email=whatever@example.com;password=password;password_confirmation=password'
      post '/api/v1/sessions?email=whatever@example.com;password=password'

      post '/api/v1/road_trip?origin=Denver,CO;destination=Pueblo,CO'

      expect(response.status).to eq(401)
      expect(response.body).to include('Unauthorized')
    end
  end
end
