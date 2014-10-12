require 'spec_helper'

module Markups
  describe PerPerson do
    context '#add' do
      it 'should add 1.2% markup for every person' do
        expect(PerPerson.new(1).for(1)).to eq(0.012)
        expect(PerPerson.new(2).for(1)).to eq(0.024)
      end
    end
  end
end


