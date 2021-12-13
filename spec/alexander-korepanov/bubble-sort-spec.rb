require 'alexander-korepanov/bubble-sort'

RSpec.describe AlexanderKorepanov::BubbleSort do
  subject { described_class.new(input_array: input_array).bubble_sort }

  describe "#bubble-sort" do
    context 'when given an empty array' do
      let(:input_array) { [] }

      it 'returns empty array' do
        expect(subject).to eq([])
      end
    end

    context 'when input is a true ' do
      let(:input_array) { true }

      it 'returns false' do
        expect(subject).to eq(false)
      end
    end

    context 'when input is a String ' do
      let(:input_array) { 'some string' }

      it 'returns false' do
        expect(subject).to eq(false)
      end
    end

    context 'when input is a Float ' do
      let(:input_array) { 0.05 }

      it 'returns false' do
        expect(subject).to eq(false)
      end
    end

    context 'when given an array with one value' do
      let(:input_array) { [5] }

      it 'returns initial array' do
        expect(subject).to eq([5])
      end
    end

    context 'when given sorted array' do
      let(:input_array) { [1, 45, 65, 85] }

      it 'returns initial array' do
        expect(subject).to eq([1, 45, 65, 85])
      end
    end

    context 'when given unsorted array' do
      let(:input_array) { [65, 7, -1, 8, 9, 0] }

      it 'returns sorted array' do
        expect(subject).to eq([-1, 0, 7, 8, 9, 65])
      end
    end
  end
end
