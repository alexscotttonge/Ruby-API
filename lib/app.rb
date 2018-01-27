require 'net/http'

class App

  def api_request
    uri = URI('https://driftrock-dev-test-2.herokuapp.com')
    response = Net::HTTP.get_response(uri)
    response.code
  end

end
