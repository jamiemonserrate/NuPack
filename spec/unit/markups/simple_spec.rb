require 'spec_helper'

module Markups
  describe Simple do
    context '#for' do
      it 'should be able to add 5% flat markup' do
        expect(Simple.flat.for(1)).to eq(0.05)
      end

      it 'should be able to add 13% food markup' do
        expect(Simple.food.for(1)).to eq(0.13)
      end

      it 'should be able to add 7.5% pharmaceuticals markup' do
        expect(Simple.pharmaceuticals.for(1)).to eq(0.075)
      end

      it 'should be able to add 2% electronics markup' do
        expect(Simple.electronics.for(1)).to eq(0.02)
      end
    end

    context '#initialize' do
      it 'should not be able to create an object directly' do
        expect {Simple.new(1)}.to raise_error(NoMethodError)
      end
    end
  end
end
