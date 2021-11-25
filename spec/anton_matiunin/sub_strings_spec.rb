require 'anton_matiunin/sub_strings'

RSpec.describe AntonMatiunin::SubStrings do
  subject { described_class.new(input_string: input_string, dictionary: dictionary) }

  describe '#counter' do
    context 'input_string is nil' do
      let(:input_string) { nil }
      let(:dictionary) { ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"] }

      it 'returns empty hash' do
        expect(subject.counter).to eq({})
      end
    end

    context 'when given string with one word' do
      let(:input_string) { "below" }
      let(:dictionary) { ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"] }

      it 'handle multiple words' do
        expect(subject.counter).to eq({ "below" => 1, "low" => 1 })
      end
    end

    context 'when given string with multiple words' do
      let(:input_string) { "Howdy partner, sit down! How's it going?" }
      let(:dictionary) { ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"] }

      it 'handle multiple words' do
        expect(subject.counter).to eq({ "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 })
      end
    end

    context 'when given string is a number' do
      let(:input_string) { 155 }
      let(:dictionary) { ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"] }

      it 'returns empty hash, cause dictionary has no integers' do
        expect(subject.counter).to eq({})
      end
    end

    context 'if dictionary is nil' do
      let(:input_string) { "below" }
      let(:dictionary) { nil }

      it 'returns empty hash' do
        expect(subject.counter).to eq({})
      end
    end
  end
end
