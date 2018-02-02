require 'rest-client'
require 'json'

class MostLoyal

  def number_of_entries
    number_of_entries = parse_most_loyal['data']
  end

  def mode_user_id
    number_of_entries.each_with_object(Hash.new(0)) { |order, hash| hash[order['user_id']] += 1 }.max_by { |k, v| v }
  end

  def print_users
    purchase_id = "NW0H-Q6RH-5L31-4ZHU"
    number_of_entries = parse_users['data']
    number_of_entries.each do |user|
      if user['id'] == purchase_id
      puts user['email']
      end
    end
  end

  private

  def parse_most_loyal
    url = purchase_url
    response = RestClient.get(url)
    data = JSON.parse(response)
  end

  def parse_users
    url = user_url
    response = RestClient.get(url)
    data = JSON.parse(response)
  end

  def purchase_url
    url_extension = "https://driftrock-dev-test-2.herokuapp.com/purchases?per_page=40001&page=1"
    # total purchases = 40001
  end

  def user_url
    url_extension = "https://driftrock-dev-test-2.herokuapp.com/users?per_page=10001&page=1"
    # total users = 10001
  end

end
