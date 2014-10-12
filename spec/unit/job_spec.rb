require 'spec_helper'

describe Job do
  context '#estimate' do
    context 'base markup' do
      it 'should add 5% flat markup' do
        job = Job.new(10)

        expect(job.estimate).to eq(10.5)
      end
    end

    context 'per person markup' do
      it 'should add 1.2% for every person that needs to work on the job' do
        job = Job.new(20)
        job.add_markup(PerPersonMarkup.new(2))

        expect(job.estimate).to eq(21.504)
      end
    end
  end
end
