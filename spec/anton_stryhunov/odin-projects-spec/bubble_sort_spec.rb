require 'anton_stryhunov/odin-projects/bubble_sort'

RSpec.describe AntStryhunov::BubbleSort do
  subject { described_class.new(input_array: input_array).bubble_sort }

  describe '#bubble_sort' do
    context 'when input_array is not specified' do
      let(:input_array) { nil }

      it 'returns an empty arr' do
        expect(subject).to eq([])
      end
    end

    context 'when input_array is specified' do
      let(:input_array) { [4, 3, 78, 2, 0, 2] }

      it 'returns sort arr' do
        expect(subject).to eq([0, 2, 2, 3, 4, 78])
      end
    end

    context 'when lightest element in the end of input_array' do
      let(:input_array) { [135, 31, 78, 2, 0, 2, -10] }

      it 'returns sort arr' do
        expect(subject).to eq([-10, 0, 2, 2, 31, 78, 135])
      end
    end

    context 'when input array is number' do
      let(:input_array) { 425 }

      it 'returns empty array' do
        expect(subject).to eq([])
      end
    end

    context 'when input array is strings' do
      let(:input_array) { %w[d c b a] }

      it 'returns sort array (according to alphabet)' do
        expect(subject).to eq (%w[a b c d])
      end
    end
  end
end
