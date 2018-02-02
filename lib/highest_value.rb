require 'rest-client'
require 'json'

class MostLoyal

  def number_of_entries
    number_of_entries = parse_most_loyal['data']
  end

  def mode_user_id
    number_of_entries.each_with_object(Hash.new(0)) { |order, hash| hash[order['user_id']] += 1 }.max_by { |k, v| v }
  end

  private

  def parse_most_loyal
    url = most_loyal_extension
    response = RestClient.get(url)
    data = JSON.parse(response)
  end

  def most_loyal_extension
    url_extension = "https://driftrock-dev-test-2.herokuapp.com/purchases?per_page=40001&page=1"
    # total purchases = 40001
  end

end
