require 'anton_matiunin/stock_picker'

RSpec.describe AntonMatiunin::StockPicker do
  subject { described_class.new(input_array: input_array) }

  describe '#stock_picker' do
    context 'if array is standart' do
      let(:input_array) {[17, 3, 6, 9, 15, 8, 6, 1, 10]}

      it 'returns profit days' do
        expect(subject.stock_picker).to eq([1, 4])
      end
    end

    context 'if array is nil' do
      let(:input_array) { nil }

      it 'returns empty array' do
        expect(subject.stock_picker).to eq([])
      end
    end

    context 'if array is default value' do
        it 'returns result of default array' do
        expect(described_class.new.stock_picker).to eq([0, 2])
      end
    end


  end
end
