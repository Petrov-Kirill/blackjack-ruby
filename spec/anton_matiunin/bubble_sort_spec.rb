require 'anton_matiunin/bubble_sort'

RSpec.describe AntonMatiunin::BubbleSort do
  subject { described_class.new(array: array) }

  describe '#bubble_sort' do
    context 'if array is standart' do
      let(:array) { [17, 3, 6, 9, 15, 8, 6, 1, 10] }

      it 'returns sorted array days' do
        expect(subject.bubble_sort).to eq(array.sort)
      end
    end

    context 'if array is nil' do
      let(:array) { nil }

      it 'returns empty array' do
        expect(subject.bubble_sort).to eq([])
      end
    end

    context 'if array is default value' do
      it 'returns result of default sorted array' do
        expect(described_class.new.bubble_sort).to eq([1, 2, 3])
      end
    end

  end
end
