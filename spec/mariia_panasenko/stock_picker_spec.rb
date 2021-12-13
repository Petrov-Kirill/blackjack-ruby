require 'mariia_panasenko/stock_picker'

RSpec.describe MariiaPanasenko::StockPicker do
  subject { described_class.new(input_array: input_array) }

  describe '#stock_picker' do
    let(:input_array) { [17, 3, 6, 9, 15, 8, 6, 1, 10] }

    context 'if prices are specified' do
      it 'returns optimal buy/sell prices' do
        expect(subject.stock_picker).to eq([1, 4])
      end
    end

    context 'when prices are equal' do
      let(:input_array) { [10, 10, 10, 10] }
      it 'returns [0, 0] array' do
        expect(subject.stock_picker).to eq([0, 0])
      end
    end
    context 'if input_array are not specified' do
      let(:input_array) { nil }

      it 'returns empty array' do
        expect(subject.stock_picker).to eq([])
      end
    end
  end
end
