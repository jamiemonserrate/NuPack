require 'spec_helper'

describe SimpleMarkup do
  context '#add' do
    it 'should be able to add 5% flat markup' do
      expect(SimpleMarkup.new(SimpleMarkup::FLAT_MARKUP_RATE).for(1)).to eq(0.05)
    end

    it 'should be able to add 13% food markup' do
      expect(SimpleMarkup.new(SimpleMarkup::FOOD_MARKUP_RATE).for(1)).to eq(0.13)
    end
  end
end