require 'spec_helper'

describe 'NuPack' do
  context 'text case #1' do
    it 'should provide estimate' do
      job = Job.new(1299.99)
      job.add_markup(PerPersonMarkup.new(3))

      expect(job.estimate).to eq(1414.1291219999998)
    end
  end
end