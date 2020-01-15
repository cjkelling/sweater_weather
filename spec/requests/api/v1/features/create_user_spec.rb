require 'rails_helper'

describe 'User Registration' do
  describe 'User posts email, password, password confirmation' do
    it 'A successful request creates a user and generates a unique api key associated with that user' do
      post '/api/v1/users?email=whatever@example.com;password=password;password_confirmation=password'

      expect(response).to be_successful

      user = User.last

      expect(response.status).to eq(201)
      expect(response.body).to include('api_key:')
      expect(user.email).to eq('whatever@example.com')
      expect(user.api_key.length).to eq(64)
    end

    it 'An unsuccessful request returns a 400 level status code and body with a description of why the request wasn’t successful' do
      post '/api/v1/users?email=whatever@example.com;password=password;password_confirmation=password'
      expect(response.status).to eq(201)

      post '/api/v1/users?email=whatever@example.com;password=password;password_confirmation=password'
      expect(response.status).to eq(400)
      expect(response.body).to include('Email has already been taken')

      post '/api/v1/users?email=cj@example.com;password=password;password_confirmation=wrongpassword'
      expect(response.status).to eq(400)
      expect(response.body).to include("Password confirmation doesn't match Password")
    end
  end
end
