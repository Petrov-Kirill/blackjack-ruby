require 'vadym_vykhodtsev/stock_picker'

RSpec.describe VadymVykhodtsev::StockPicker do
  subject { described_class.new(input_array: input_array).stock_picker_process }

  describe '#stock_picker' do
    context 'when array empty' do
      let(:input_array) { [] }

      it 'returns empty array' do
        expect(subject).to eq(nil)
      end
    end

    context 'when pass array with values' do
      let(:input_array) { [17, 3, 6, 9, 15, 8, 6, 1, 10] }
      let(:result) { [1, 4] }

      it 'returns best days' do
        expect(subject).to eq(result)
      end
    end
  end
end
