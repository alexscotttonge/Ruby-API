require 'spec_helper'

describe App do

  describe '#api_request' do
    xit 'can connect to the API' do
      client = App.new
      expect(client.api_request).to eq '200'
    end
  end

  describe '#most_sold' do
    xit 'returns the most sold item' do
      client = App.new

    end
  end


end


# change net/http to rest client and look in trash for correct setup
# change initial test
# Add simple cov gem
