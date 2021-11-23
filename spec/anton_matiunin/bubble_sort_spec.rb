require 'anton_matiunin/bubble_sort'

RSpec.describe AntonMatiunin::BubbleSort do
  subject { described_class.new(input_array: input_array) }

  describe '#bubble_sort' do
    context 'if array is standard' do
      let(:input_array) { [17, 3, 6, 9, 15, 8, 6, 1, 10] }
      it 'returns sorted array days' do
        expect(subject.bubble_sort).to eq(input_array.sort)
      end
    end

    context 'if array is nil' do
      let(:input_array) { nil }
      it 'returns empty array' do
        expect(subject.bubble_sort).to eq([])
      end
    end

    context 'if array is shuffled every test' do
      let(:input_array) { (50..20).to_a.shuffle }
      it 'returns result of default sorted array' do
        expect(subject.bubble_sort).to eq(input_array.sort)
      end
    end

  end
end
