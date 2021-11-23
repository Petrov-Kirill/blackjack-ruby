require 'anton_matiunin/stock_picker'

RSpec.describe AntonMatiunin::StockPicker do
  subject { described_class.new(input_array: input_array) }

  describe '#stock_picker' do
    context 'if array is standard' do
      let(:input_array) { [17, 3, 6, 9, 15, 8, 6, 1, 10] }
      it 'returns profit days' do
        expect(subject.pick).to eq([1, 4])
      end
    end

    context 'if array is nil' do
      let(:input_array) { nil }
      it 'returns empty array' do
        expect(subject.pick).to eq([])
      end
    end

    context 'if no profit' do
      let(:input_array) { [8, 8, 8, 7] }
      it 'returns empty array' do
        expect(subject.pick).to eq([])
      end
    end
  end
end
