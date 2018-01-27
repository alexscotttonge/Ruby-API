require 'net/http'
require 'json'

class App

  def api_request
    uri = URI('https://driftrock-dev-test-2.herokuapp.com')
    response = Net::HTTP.get_response(uri)
    response.code
  end

  def all_purchases
    # total purchases = 40001
    per_page = 1
    page = 1
    url_extension = "?per_page=#{per_page}&page=#{page}"
    uri = URI('https://driftrock-dev-test-2.herokuapp.com/purchases' + url_extension )
    response = Net::HTTP.get_response(uri)
    data = JSON.parse(response)
    number_of_entries = data['data']

    number_of_entries.each_with_object(Hash.new(0)) { |order, hash| hash[number_of_entries['spend']] += 1 }.max_by { |k, v| v }
  end

end
