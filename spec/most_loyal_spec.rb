require 'spec_helper'

describe MostLoyal do

  describe '#most_user_id' do
    it 'returns the user id of the most loyal user' do
      ml = MostLoyal.new
      expect(ml.mode_user_id).to eq ["NW0H-Q6RH-5L31-4ZHU", 15]
    end
  end

  describe '#most_loyal' do
    it 'prints the most loyal customer' do
      ml = MostLoyal.new
      expect { ml.most_loyal }.to output("bogisich_judah@hilperttromp.biz\n").to_stdout
    end
  end

end
