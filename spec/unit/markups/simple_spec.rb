require 'spec_helper'

module Markups
  describe Simple do
    context '#for' do
      it 'should be able to add 5% flat markup' do
        expect(Simple.new(Simple::FLAT_RATE).for(1)).to eq(0.05)
      end

      it 'should be able to add 13% food markup' do
        expect(Simple.new(Simple::FOOD_RATE).for(1)).to eq(0.13)
      end
    end
  end
end
