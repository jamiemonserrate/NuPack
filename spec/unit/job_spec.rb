require 'spec_helper'

describe Job do
  context '#estimate' do
    it 'should add 5% flat markup' do
      expect(Job.new(10, 0).estimate).to eq(10.5)
    end

    it 'should add 1.2% for every person that needs to work on the job' do
      expect(Job.new(20,1).estimate).to eq(21.24)

      expect(Job.new(20,2).estimate).to eq(21.48)
    end
  end
end
