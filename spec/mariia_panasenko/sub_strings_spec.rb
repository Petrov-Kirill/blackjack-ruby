require 'mariia_panasenko/sub_strings'

RSpec.describe MariiaPanasenko::SubStrings do
  subject { described_class.new(input_string: input_string, dictionary: dictionary) }

  describe '#substrings' do
    context 'when dictionary is nil' do
      let(:input_string) { 'Hello!' }
      let(:dictionary) { nil }

      it 'returns an empty array' do
        expect(subject.substrings).to eq([])
      end
    end

    context 'when dictionary is not specified' do
      let(:input_string) { 'Hello!' }
      let(:dictionary) { [] }

      it 'returns an empty array' do
        expect(subject.substrings).to eq([])
      end
    end

    context 'count each substring for a single word' do
      let(:input_string) { 'below' }
      let(:dictionary) do
        %w[below down go going horn how howdy it i low own part partner sit]
      end

      it 'returns hash listing each substring for a single word' do
        expect(subject.substrings).to eq({ 'below' => 1, 'low' => 1 })
      end
    end

    context 'count each substring for a sentence' do
      let(:input_string) { "Howdy partner, sit down! How's it going?" }
      let(:dictionary) do
        %w[below down go going horn how howdy it i low own part partner sit]
      end

      it 'returns hash listing each substring for a sentence' do
        expect(subject.substrings).to eq({ 'down' => 1, 'go' => 1, 'going' => 1, 'how' => 2, 'howdy' => 1, 'it' => 2,
                                           'i' => 3, 'own' => 1, 'part' => 1, 'partner' => 1, 'sit' => 1 })
      end
    end
  end
end
