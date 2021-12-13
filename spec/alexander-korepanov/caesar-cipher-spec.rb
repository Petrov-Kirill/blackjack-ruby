require 'alexander-korepanov/caesar-cipher'

RSpec.describe AlexanderKorepanov::CaesarCypher do
  subject { described_class.new(input_string: input_string, shift: shift) }

  describe '#encrypt' do
    context 'when shift is not specified' do
      let(:input_string) { 'Hello!' }
      let(:shift) { nil }

      it 'returns initial input_string' do
        expect(subject.encrypt).to eq(input_string)
      end
    end

    context 'when shift is a String' do
      let(:input_string) { 'Hello!' }
      let(:shift) { 'some string' }

      it 'returns initial input_string' do
        expect(subject.encrypt).to eq(input_string)
      end
    end

    context 'when passed an empty string' do
      let(:input_string) { '' }
      let(:shift) { nil }

      it 'returns empty string' do
        expect(subject.encrypt).to eq(input_string)
      end
    end

    context 'when passed number' do
      let(:input_string) { 0.05 }
      let(:shift) { 2 }

      it 'returns string number as a String' do
        expect(subject.encrypt).to eq(input_string.to_s)
      end
    end

    context 'when passed symbol Z with shift by 3 positions' do
      let(:input_string) { 'Z' }
      let(:shift) { 3 }

      it 'returns "C"' do
        expect(subject.encrypt).to eq('C')
      end
    end

    context 'when passed "Hello, World!" with shift by 6 positions ' do
      let(:input_string) { 'Hello, World!' }
      let(:shift) { 6 }

      it 'returns Nkrru, Cuxrj!' do
        expect(subject.encrypt).to eq('Nkrru, Cuxrj!')
      end
    end
  end
end
