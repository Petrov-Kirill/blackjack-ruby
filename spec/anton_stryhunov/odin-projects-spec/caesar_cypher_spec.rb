require 'anton_stryhunov/odin-projects/caesar_cypher'

RSpec.describe AntStryhunov::CaesarCypher do
  subject { described_class.new(input_string: input_string, shift: shift).encrypt }

  describe '#encrypt' do
    context 'when shift is not specified' do
      let(:input_string) { 'Hello!' }
      let(:shift) { nil }

      it 'returns initial input_string' do
        expect(subject).to eq(input_string)
      end
    end

    context 'when shift is specified' do
      let(:input_string) { 'Hello!' }
      let(:shift) { 1 }

      it 'returns encrypted string' do
        expect(subject).to eq('Ifmmp!')
      end
    end

    context 'when shift is more than 26' do
      let(:input_string) { 'hello!' }
      let(:shift) { 30 }

      it 'returns encrypted string' do
        expect(subject).to eq('lipps!')
      end
    end

    context 'when input string have another symbols such as #@^&?' do
      let(:input_string) { '1/He23llo!%^$' }
      let(:shift) { 5 }

      it 'returns encrypted string' do
        expect(subject).to eq('1/Mj23qqt!%^$')
      end
    end
  end
end
