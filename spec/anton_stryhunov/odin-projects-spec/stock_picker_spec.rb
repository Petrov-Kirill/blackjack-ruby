require 'anton_stryhunov/odin-projects/stock_picker'

RSpec.describe AntStryhunov::StockPicker do
  subject { described_class.new(input_array: input_array).stock_picker }

  describe '#stock_picker' do
    context 'when input_array is not specified' do
      let(:input_array) { nil }

      it 'returns nil' do
        expect(subject).to eq(nil)
      end
    end

    context 'when input array is string' do
      let(:input_array) { 'Input_string' }

      it 'returns nil' do
        expect(subject).to eq(nil)
      end
    end

    context 'when input array is array' do
      let(:input_array) { [17, 3, 6, 9, 15, 8, 6, 1, 10] }

      it 'returns array with the best day to buy and the best day to sell' do
        expect(subject).to eq([1, 4])
      end
    end

    context 'when the lowest day is the last day' do
      let(:input_array) { [13, 6, 9, 15, 8, 6, 10, 1] }

      it 'returns array with the best day to buy and the best day to sell' do
        expect(subject).to eq([1, 3])
      end
    end

    context 'when input array have a negative value' do
      let(:input_array) { [7, 13, 6, 9, 15, 8, 6, 10, 1] }

      it 'returns array with the best day to buy and the best day to sell' do
        expect(subject).to eq([2, 4])
      end
    end
  end
end
