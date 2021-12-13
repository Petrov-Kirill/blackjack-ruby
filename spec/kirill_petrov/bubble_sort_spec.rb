require 'kirill_petrov/bubble_sort'

RSpec.describe KirillPetrov::BubbleSort do
  subject { described_class.new(input_array: input_array).sort_array }

  describe '#sort_array' do
    context 'when given correct array for sorting' do
      let(:input_array) { [17, 3, 6, 9, 15, 8, 6, 1, 10] }

      it 'should sort array' do
        expect(subject).to eq([1, 3, 6, 6, 8, 9, 10, 15, 17])
      end
    end

    context 'when given and empty array' do
      let(:input_array) { nil }

      it 'should returns empty array' do
        expect(subject).to eq([])
      end
    end
  end
end
