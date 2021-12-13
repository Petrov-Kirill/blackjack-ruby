require 'kirill_petrov/caesar_cypher'

RSpec.describe KirillPetrov::CaesarCypher do
  subject { described_class.new(input_string: input_string, shift: shift).encrypt }

  describe '#encrypt' do
    context 'if shift is not specified' do
      let(:input_string) { 'Hello!' }
      let(:shift) { nil }

      it 'returns initial input_string' do
        expect(subject).to eq('Hello!')
      end
    end
    context 'if shift is specified' do
      let(:input_string) { 'ZHello random string?@_' }
      let(:shift) { 3 }

      it 'returns initial input_string' do
        expect(subject).to eq("CKhoor udqgrp vwulqj?@_")
      end
    end
    context 'test for string' do
      let(:input_string) { 'String for input' }
      let(:shift) { 3 }

      it 'returns initial input_string' do
        expect(subject).to eq("Vwulqj iru lqsxw")
      end
    end
  end
end
