require 'kirill_petrov/stock_picker'

RSpec.describe KirillPetrov::StockPicker do
  subject { described_class.new(prices: prices).pick }

  describe '#pick' do
    context 'if method returns correct value' do
      let(:prices) { [17, 3, 6, 9, 15, 8, 16, 1, 17] }

      it 'should returns correct value' do
        expect(subject).to eq([7, 8])
      end
    end
    context 'if array empty returns empty array' do
      let(:prices) { [] }

      it 'returns nil' do
        expect(subject).to eq([])
      end
    end
    context 'if method returns correct value' do
      let(:prices) { [1, 2, 5, 78, 56, 34, 123, 89] }

      it 'should returns correct value' do
        expect(subject).to eq([0, 6])
      end
    end
  end
end
