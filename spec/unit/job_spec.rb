require 'spec_helper'

describe Job do
  context '#estimate' do
    context 'base markup' do
      it 'should add 5% flat markup' do
        job = Job.new(10)

        expect(job.estimate).to eq(10.5)
      end
    end

    context 'additional markup' do
      it 'should be able to add per person markup' do
        job = Job.new(20)
        job.add_markup(Markups::PerPerson.new(2))

        expect(job.estimate).to eq(21.5)
      end

      it 'should be able to add simple markup' do
        job = Job.new(20)
        job.add_markup(Markups::Simple.new(Markups::Simple::FOOD_RATE))

        expect(job.estimate).to eq(23.73)
      end
    end

    context 'multiple markups' do
      it 'should be able to add multiple markups' do
        job = Job.new(20)
        job.add_markup(Markups::PerPerson.new(2))
        job.add_markup(Markups::Simple.new(Markups::Simple::FOOD_RATE))

        expect(job.estimate).to eq(24.23)
      end
    end

    context 'round off' do
      it 'should round off the estimate to nearest 2 decimals' do
        job = Job.new(1)
        job.add_markup(Markups::PerPerson.new(2))

        expect(job.estimate).to eq(1.08)
      end
    end

  end
end
