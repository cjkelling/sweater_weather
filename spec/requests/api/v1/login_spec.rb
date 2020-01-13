require 'rails_helper'

describe 'User Login' do
  describe 'User posts email and password to sessions endpoint' do
    it 'A successful request returns the users api key' do
      post '/api/v1/sessions?email=whatever@example.com;password=password'

      expect(response).to be_successful

      user = User.last

      expect(response.status).to eq(200)
      expect(response.body).to include(user.api_key)
    end

    it 'An unsuccessful request returns a 400 level status code and body with a description of why the request wasn’t successful' do
      post '/api/v1/users?email=whatever@example.com;password=password;password_confirmation=password'

      post '/api/v1/sessions?email=wrong@email.com;password=wrongpassword'

      expect(response.status).to eq(400)
      expect(response.body).to include('Your credentials are bad')
    end
  end
end
