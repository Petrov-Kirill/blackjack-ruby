require 'anton_matiunin/caesar_cypher'

RSpec.describe AntonMatiunin::CaesarCypher do
  subject { described_class.new(input_string: input_string, shift: shift) }

  describe '#encrypt' do
    context 'if shift is not specified' do
      let(:input_string) { 'Hello!' }
      let(:shift) { nil }

      it 'returns initial input_string' do
        expect(subject.encrypt).to eq('Hello!')
      end
    end

    context 'with correct shift value' do
      let(:input_string) { 'Hello World!' }
      let(:shift) { 3 }

      it 'returns encrypted string' do
        expect(subject.encrypt).to eq('Khoor Zruog!')
      end
    end

    context 'if shift is string' do
      let(:input_string) { 'Hello World!' }
      let(:shift) { 'string' }

      it 'returns initial input_string' do
        expect(subject.encrypt).to eq('Hello World!')
      end
    end
  end
end
