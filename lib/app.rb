require 'rest-client'
require 'json'

class App

  def api_request
    url = 'https://driftrock-dev-test-2.herokuapp.com'
    response = RestClient.get(url)
    response.code
  end

end
