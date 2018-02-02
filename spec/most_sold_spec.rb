require 'spec_helper'

describe MostSold do

  describe 'most_sold' do
    it 'returns the most sold item' do
      ms = MostSold.new
      expect(ms.most_sold).to eq ["Enormous Leather Bottle", 19]
    end
  end

end
