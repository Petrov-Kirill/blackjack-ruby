require 'vadym_vykhodtsev/bubble_sort'

RSpec.describe VadymVykhodtsev::BubbleSort do
  subject { described_class.new(numbers: numbers).bubble_sort_process }

  describe '#bubble_sort' do
    context 'when array empty' do
      let(:numbers) { [] }

      it 'returns empty array' do
        expect(subject).to eq([])
      end
    end

    context 'when pass array with values' do
      let(:numbers) { [4, 3, 72, 2, 0, 2] }
      let(:result) { [0, 2, 2, 3, 4, 72] }

      it 'returns sorted array' do
        expect(subject).to eq(result)
      end
    end
  end
end
