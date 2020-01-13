require 'rails_helper'

describe 'User Registration' do
  describe 'User posts email, password, password confirmation' do
    it 'A successful request creates a user and generates a unique api key associated with that user' do
      post '/api/v1/users?email=whatever@example.com;password=password;password_confirmation=password'

      expect(response).to be_successful

      expect(response.body).to include('api_key:')
      expect(User.last.email).to eq('whatever@example.com')
    end

    it 'An unsuccessful request returns a 400 level status code and body with a description of why the request wasn’t successful' do
      post '/api/v1/users?email=whatever@example.com;password=password;password_confirmation=password'

      post '/api/v1/users?email=whatever@example.com;password=password;password_confirmation=password'

      expect(response.body).to include('Email has already been taken')
    end
  end
end
