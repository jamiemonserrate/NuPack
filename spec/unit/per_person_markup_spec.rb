require 'spec_helper'

describe PerPersonMarkup do
  context '#add' do
    it 'should add 1.2% markup for every person' do
      expect(PerPersonMarkup.new(1).for(1)).to eq(0.012)
      expect(PerPersonMarkup.new(2).for(1)).to eq(0.024)
    end
  end
end

