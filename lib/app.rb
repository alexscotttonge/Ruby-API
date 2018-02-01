require 'rest-client'
require 'json'

class App

  def api_request
    url = 'https://driftrock-dev-test-2.herokuapp.com'
    response = RestClient.get(url)
    response.code
  end

  def most_sold
    number_of_entries = parse_most_sold_items['data']
    number_of_entries.each_with_object(Hash.new(0)) { |order, hash| hash[order['item']] += 1 }.max_by { |k, v| v }
  end

  private

  def most_sold_url_extension
    url_extension = "https://driftrock-dev-test-2.herokuapp.com/purchases?per_page=40001&page=1"
    # total purchases = 40001
  end

  def parse_most_sold_items
    url = most_sold_url_extension
    response = RestClient.get(url)
    data = JSON.parse(response)
  end

end
