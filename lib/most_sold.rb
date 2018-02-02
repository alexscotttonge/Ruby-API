class MostSold

  def total_sales
    parse_most_sold_items['data']
  end

  def most_sold
    total_sales.each_with_object(Hash.new(0)) { |order, hash| hash[order['item']] += 1 }.max_by { |_k, v| v }
    # thanks to @theTinMan on Stackoverflow for this method
  end

  private

  def most_sold_url_extension
    "https://driftrock-dev-test-2.herokuapp.com/purchases?per_page=40001&page=1"
      # total purchases = 40001
  end

  def parse_most_sold_items
    url = most_sold_url_extension
    response = RestClient.get(url)
    JSON.parse(response)
  end

end
