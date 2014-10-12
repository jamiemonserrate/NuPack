require 'spec_helper'

describe 'NuPack' do
  context 'text case #1' do
    it 'should provide estimate' do
      job = Job.new(1299.99)
      job.add_markup(Markups::PerPerson.new(3))
      job.add_markup(Markups::Simple.food)

      expect(job.estimate).to eq(1591.58)
    end
  end

  context 'text case #2' do
    it 'should provide estimate' do
      job = Job.new(5432.00)
      job.add_markup(Markups::PerPerson.new(1))
      job.add_markup(Markups::Simple.pharmaceuticals)

      expect(job.estimate).to eq(6199.81)
    end
  end

  context 'text case #3' do
    it 'should provide estimate' do
      job = Job.new(12456.95)
      job.add_markup(Markups::PerPerson.new(4))

      expect(job.estimate).to eq(13707.63)
    end
  end

end