require 'mariia_panasenko/caesar_cipher'

RSpec.describe MariiaPanasenko::CaesarCypher do
  subject { described_class.new(input_string: input_string, shift: shift) }

  describe '#encrypt' do
    context 'if shift is not specified' do
      let(:input_string) { 'Hello!' }
      let(:shift) { nil }

      it 'returns initial input_string' do
        expect(subject.encrypt).to eq(input_string)
      end
    end

    context 'if string is empty array' do
      let(:input_string) { '' }
      let(:shift) { 0 }

      it 'returns error message' do
        expect(subject.encrypt).to eq('invalid input')
      end
    end

    context 'if string is empty array && shift nil' do
      let(:input_string) { '' }
      let(:shift) { nil }

      it 'returns error message' do
        expect(subject.encrypt).to eq('invalid input')
      end
    end

    context 'if shift is specified' do
      let(:input_string) { 'What a string!' }
      let(:shift) { 5 }

      it 'returns encrypted input_string' do
        expect(subject.encrypt).to eq('Bmfy f xywnsl!')
      end
    end
  end
end
