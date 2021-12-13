require 'vadym_vykhodtsev/caesar_cypher'

RSpec.describe VadymVykhodtsev::CaesarCypher do
  subject { described_class.new(string: string, shift: shift).encrypt }

  describe '#encrypt' do
    context 'when shift is not specified' do
      let(:string) { 'Hello!' }
      let(:shift) { nil }

      it 'returns initial input_string' do
        expect(subject).to eq(string)
      end
    end

    context 'when given correct params' do
      let(:string) { 'What a string!' }
      let(:shift) { 5 }
      let(:result) { 'Bmfy f xywnsl!' }

      it 'returns encrypted string' do
        expect(subject).to eq(result)
      end
    end

    context 'when given correct params' do
      let(:string) { 'What a string!' }
      let(:shift) { 2 }
      let(:result) { 'Yjcv c uvtkpi!' }

      it 'returns encrypted string' do
        expect(subject).to eq(result)
      end
    end

    context 'when given correct params' do
      let(:string) { 'zaZA349838@@**' }
      let(:shift) { 2 }
      let(:result) { 'bcBC349838@@**' }

      it 'returns encrypted string' do
        expect(subject).to eq(result)
      end
    end

    context 'when given correct params' do
      let(:string) { 'zaZA349838@@**' }
      let(:shift) { 1000 }
      let(:result) { 'lmLM349838@@**' }

      it 'returns encrypted string' do
        expect(subject).to eq(result)
      end
    end
  end
end
