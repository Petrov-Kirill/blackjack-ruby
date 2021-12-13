require 'kirill_petrov/substring'

RSpec.describe KirillPetrov::Substring do
  subject { described_class.new(input_string: input_string, dictionary: dictionary).count_word }

  describe '#count_word' do
    context 'if word is empty' do
      let(:input_string) { '' }
      let(:dictionary) do
        %w[below down go going horn how howdy it i low own part partner sit]
      end

      it 'returns empty hash' do
        expect(subject).to eq({})
      end
    end

    context 'if there is a sentence' do
      let(:input_string) { 'Hello hello, my dear pinguin, whats up with your gaming balls?' }
      let(:dictionary) do
        ['it', 'you', 'ball' ]
      end

      it 'returns hash' do
        expect(subject).to eq({ 'it'=> 1, 'you' => 1, 'ball' => 1 })
      end
    end

    context 'if there is another sentence' do
      let(:input_string) { 'Ruby takes 1-th place in my list of languages. Isn`t?' }
      let(:dictionary) do
        ['1-t', 'in my', 'isn`t']
      end

      it 'returns hash' do
        expect(subject).to eq({"1-t"=>1, "in my"=>1, "isn`t"=>1})
      end
    end
  end
end
