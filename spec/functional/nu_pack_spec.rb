require 'spec_helper'

describe 'NuPack' do
  context 'text case #1' do
    it 'should provide estimate' do
      expect(Job.new(1299.99, 3).estimate).to eq(1411.7891399999999)
    end
  end
end