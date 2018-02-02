require './lib/most_sold'
require './lib/most_loyal'
require 'rest-client'
require 'json'

class API

  def run(command)
    case
    when command == 'most_sold'
      ms = MostSold.new
      puts ms.most_sold
    when command == 'most_loyal'
      ml = MostLoyal.new
      ml.most_loyal
    end
  end

  def api_request
    url = 'https://driftrock-dev-test-2.herokuapp.com'
    response = RestClient.get(url)
    response.code
  end

end
