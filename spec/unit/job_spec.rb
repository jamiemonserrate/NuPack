require 'spec_helper'

describe Job do
  context '#estimate' do
    it 'should add 5% flat markup' do
      expect(Job.new(10).estimate).to eq(10.5)
    end
  end
end
