require 'rails_helper'

describe 'Find Antipode' do
  describe 'User enters a starting location' do
    it 'And is returned the antipode city name, current weather summary, and current temp' do
      get '/api/v1/antipode?location=hongkong'

      expect(response).to be_successful

      expect(:location_name).to_not be_empty
      expect(:forecast).to_not be_empty
      expect(:search_location).to eq('Hong Kong')
    end
  end
end
