RSpec.describe NewRelic::RestApi::ResponseCollection do
  describe '#initialize' do
    context 'when block given' do
      subject(:response_collection) do
        described_class.new(response, body: response.body) do |body|
          body
        end
      end

      let(:response) { double(body: [1,2,3]) }

      it 'maps collection from response body' do
        expect(response_collection.collection).to match_array([1, 2, 3])
      end

      it 'stores response' do
        expect(response_collection.response).to be(response)
      end
    end
  end
end
