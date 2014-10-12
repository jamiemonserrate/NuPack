require 'spec_helper'

describe 'NuPack' do
  context 'text case #1' do
    it 'should provide estimate' do
      job = Job.new(1299.99)
      job.add_markup(PerPersonMarkup.new(3))
      job.add_markup(SimpleMarkup.new(SimpleMarkup::FOOD_MARKUP_RATE))

      expect(job.estimate).to eq(1591.577757)
    end
  end

  context 'text case #2' do
    it 'should provide estimate' do
      job = Job.new(5432.00)
      job.add_markup(PerPersonMarkup.new(1))
      job.add_markup(SimpleMarkup.new(SimpleMarkup::PHARMACEUTICALS_MARKUP_RATE))

      expect(job.estimate).to eq(6199.8132000000005)
    end
  end

  context 'text case #3' do
    it 'should provide estimate' do
      job = Job.new(12456.95)
      job.add_markup(PerPersonMarkup.new(4))

      expect(job.estimate).to eq(13707.62778)
    end
  end

end