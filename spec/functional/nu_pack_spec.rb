require 'spec_helper'

describe 'NuPack' do
  context 'text case #1' do
    it 'should provide estimate' do
      job = Job.new(1299.99)
      job.add_markup(PerPersonMarkup.new(3))
      job.add_markup(FoodMarkup.new)

      expect(job.estimate).to eq(1591.577757)
    end
  end
end