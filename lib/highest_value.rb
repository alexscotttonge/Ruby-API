class MostLoyal

  def total_purchases
    number_of_entries = parse_total_purchases['data']
  end

  def total_users
    number_of_entries = parse_users['data']
  end

  def mode_user_id
    total_purchases.each_with_object(Hash.new(0)) { |order, hash| hash[order['user_id']] += 1 }.max_by { |k, v| v }
    # thanks to @theTinMan on Stackoverflow for this method
  end

  def print_users
    total_users.each do |user|
      if user['id'] == MOST_LOYAL_ID
      puts user['email']
      end
    end
  end

  private

  def parse_total_purchases
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

  MOST_LOYAL_ID = "NW0H-Q6RH-5L31-4ZHU"

end
