require 'spec_helper'

describe App do

  describe '#api_request' do
    it 'can connect to the API' do
      client = App.new
      expect(client.api_request).to eq 200
    end
  end

  describe 'most_sold' do
    it 'returns the most sold item' do
      client = App.new
      expect(client.most_sold).to eq ["Enormous Leather Bottle", 19]
    end
  end

end
