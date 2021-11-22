require 'anton_matiunin/sub_strings'

RSpec.describe AntonMatiunin::Sub_strings do
  subject { described_class.new(input_string: input_string, dictionary: dictionary) }

  describe '#substrings' do
    context 'substrings is nil' do
      let(:input_string) { nil }
      let(:dictionary) {["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]}

      it 'returns empty hash' do
        expect(subject.substrings).to eq({})
      end
    end

    context 'if basic string' do
      let(:input_string) { "below" }
      let(:dictionary) {["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]}

      it 'returns encrypted string' do
        expect(subject.substrings).to eq({"below"=>1, "low"=>1})
      end
    end

    context 'if string is Integer' do
      let(:input_string) { 155 }
      let(:dictionary) {["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]}

      it 'returns empty hash, cause dictionary has no integers' do
        expect(subject.substrings).to eq({})
      end
    end

    context 'if dictionary is nil' do
      let(:input_string) { "below" }
      let(:dictionary) {nil}

      it 'returns empty hash' do
        expect(subject.substrings).to eq({})
      end
    end
  end
end
