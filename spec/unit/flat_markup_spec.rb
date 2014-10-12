require 'spec_helper'

describe FlatMarkup do
  context '#add' do
    it 'should add 5% flat markup' do
      expect(FlatMarkup.new.for(1)).to eq(0.05)
    end
  end
end