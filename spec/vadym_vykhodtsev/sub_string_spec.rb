require 'vadym_vykhodtsev/sub_string'

RSpec.describe VadymVykhodtsev::SubStrings do
  subject { described_class.new(string: string, dictionary: dictionary).substring_process }

  describe '#substring' do
    context 'when dictionary is specified' do
      let(:string) { 'Below' }
      let(:dictionary) { %w[below down go going horn how howdy it i low own part partner sit] }

      it 'returns hash code' do
        expect(subject).to eq( { "below" => 1, "low" => 1 })
      end
    end

    context 'when input string is a multiply words' do
      let(:string) { "Howdy partner, sit down! How's it going?" }
      let(:dictionary) { %w[below down go going horn how howdy it i low own part partner sit] }

      it 'returns hash code' do
        expect(subject).to eq({ "how" => 2, "howdy" => 1, "part" => 1, "partner" => 1, "it" => 2, "i" => 3, "sit" => 1, "down" => 1, "own" => 1, "go" => 1, "going" => 1 })
      end
    end
  end
end
