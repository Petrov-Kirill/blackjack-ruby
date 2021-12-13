require 'anton_stryhunov/odin-projects/substrings_exercise'

RSpec.describe AntStryhunov::Substrings do
  subject { described_class.new(input_string: input_string, dictionary: dictionary).substrings }

  describe '#substrings' do
    context 'when dictionary is not specified' do
      let(:input_string) { 'Hello!' }
      let(:dictionary) { nil }

      it 'returns empty hash ' do
        expect(subject).to eq({})
      end
    end

    context 'when input string is not specified and dictionary have only numbers' do
      let(:input_string) { nil }
      let(:dictionary) { 123456 }

      it 'returns empty hash code' do
        expect(subject).to eq({})
      end
    end

    context 'when dictionary is array of numbers' do
      let(:input_string) { 'first is 1 or 2?' }
      let(:dictionary) { [1, 2, 3, 4] }

      it 'returns hash code' do
        expect(subject).to eq({ 1 => 1, 2 => 1 })
      end
    end

    context 'when dictionary is specified' do
      let(:input_string) { 'Below' }
      let(:dictionary) { %w[below down go going horn
                          how howdy it i low own part partner sit] }
      it 'returns hash' do
        expect(subject).to eq({ 'below' => 1, 'low' => 1 })
      end
    end

    context 'when input string is a multiply words' do
      let(:input_string) { 'Howdy partner, sit down! How\'s it going?' }
      let(:dictionary) { %w[below down go going horn
                          how howdy it i low own part partner sit] }

      it 'returns hash code' do
        expect(subject).to eq({ 'how' => 2, 'howdy' => 1, 'part' => 1, 'partner' => 1, 'it' => 2,
                                'i' => 3, 'sit' => 1, 'down' => 1, 'own' => 1, 'go' => 1, 'going' => 1 })
      end
    end
  end
end
