require 'spec_helper'

describe App do
  it 'can connect to the API' do
    client = App.new
    expect(client.api_request).to eq '200'
  end
end
