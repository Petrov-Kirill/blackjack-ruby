require 'anton_matiunin/bubble_sort'

RSpec.describe AntonMatiunin::BubbleSort do
  subject { described_class.new(input_array: input_array) }

  describe '#bubble_sort' do
    context 'if array is standard' do
      let(:input_array) { [17, 3, 6, 9, 15, 8, 6, 1, 10] }

      it 'returns sorted array' do
        expect(subject.bubble_sort).to eq([1, 3, 6, 6, 8, 9, 10, 15, 17])
      end
    end

    context 'if array is nil' do
      let(:input_array) { nil }

      it 'returns empty array' do
        expect(subject.bubble_sort).to eq([])
      end
    end

    context 'if array have multiple equal values' do
      let(:input_array) { [5, 5, 5, 3, 3, 2, 2] }

      it 'returns sorted array' do
        expect(subject.bubble_sort).to eq([2, 2, 3, 3, 5, 5, 5])
      end
    end
  end
end
