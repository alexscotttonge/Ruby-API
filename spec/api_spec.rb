require 'spec_helper'

describe API do

  describe '#api_request' do
    it 'can connect to the API' do
      client = API.new
      expect(client.api_request).to eq 200
    end
  end

end
