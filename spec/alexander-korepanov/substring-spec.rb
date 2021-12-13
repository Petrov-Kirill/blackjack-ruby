require 'alexander-korepanov/substring'

RSpec.describe AlexanderKorepanov::Substring do
  subject { described_class.new(string: string, dictionary: dictionary) }

  describe '#found_word_entries' do
    context 'when given an empty string' do
      let(:string) { '' }
      let(:dictionary) { %w[or how] }

      it 'returns empty hash' do
        expect(subject.found_word_entries).to eq({})
      end
    end

    context 'when given an empty dictionary' do
      let(:string) { 'Hello, World!' }
      let(:dictionary) { [] }

      it 'returns empty hash' do
        expect(subject.found_word_entries).to eq({})
      end
    end

    context 'when input string is a Float type' do
      let(:string) { 0.05 }
      let(:dictionary) { [] }

      it 'returns empty hash' do
        expect(subject.found_word_entries).to eq({})
      end
    end

    context 'when input string is a Integer type' do
      let(:string) { 2 }
      let(:dictionary) { [] }

      it 'returns empty hash' do
        expect(subject.found_word_entries).to eq({})
      end
    end

    context 'when dictionary is just a number' do
      let(:string) { 'some string' }
      let(:dictionary) { 6 }

      it 'returns empty hash' do
        expect(subject.found_word_entries).to eq({})
      end
    end

    context 'when dictionary is a string' do
      let(:string) { 'some string' }
      let(:dictionary) { 'another string' }

      it 'returns empty hash' do
        expect(subject.found_word_entries).to eq({})
      end
    end

    context 'when given a correct string and dictionary' do
      let(:string) { 'Hello, World!Love or Hell!' }
      let(:dictionary) { %w[hell or lo ! a] }

      it 'returns {"hell" => 2, "or" => 2, "lo"=>2, "!" => 2} ' do
        expect(subject.found_word_entries).to eq({ 'hell' => 2, 'or' => 2, 'lo' => 2, '!' => 2 })
      end
    end

    context 'when given a correct string and dictionary' do
      let(:string) { "Howdy partner, sit down! How's it going?" }
      let(:dictionary) { %w[below down go going horn how howdy it i low own part partner sit] }

      it 'returns { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1,'\
          '"part" => 1, "partner" => 1, "sit" => 1 }' do
        expect(subject.found_word_entries).to eq({ 'down' => 1, 'go' => 1, 'going' => 1, 'how' => 2, 'howdy' => 1,
                                          'it' => 2, 'i' => 3, 'own' => 1, 'part' => 1, 'partner' => 1, 'sit' => 1 })
      end
    end
  end
end
