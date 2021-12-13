require 'alexander-korepanov/stock-picker'

RSpec.describe AlexanderKorepanov::StockPicker do
  subject { described_class.new(prices: prices) }

  describe '#stock-picker' do
    context 'if prices is a String' do
      let(:prices) { 'some string' }

      it 'returns empty array, []' do
        expect(subject.pick).to eq([])
      end
    end

    context 'if prices is a Float' do
      let(:prices) { 0.05 }

      it 'returns empty array, []' do
        expect(subject.pick).to eq([])
      end
    end

    context 'if prices count less than 2' do
      let(:prices) { [] }

      it 'returns empty array' do
        expect(subject.pick).to eq([])
      end

      let(:prices) { [2] }

      it 'returns empty array' do
        expect(subject.pick).to eq([])
      end
    end

    context 'if two prices and first is greater than second' do
      let(:prices) { [4, 2] }

      it 'returns empty array' do
        expect(subject.pick).to eq([])
      end
    end

    context 'if [17, 3, 6, 9, 15, 8, 6, 1, 10]' do
      let(:prices) { [17, 3, 6, 9, 15, 8, 6, 1, 10] }

      it 'returns [1,4]' do
        expect(subject.pick).to eq([1, 4])
      end
    end
  end
end
