require 'spec_helper'

describe 'NuPack' do
  context 'text case #1' do
    it 'should provide estimate' do
      expect(Job.new(1299.99).estimate).to eq(1364.9895)
    end
  end
end