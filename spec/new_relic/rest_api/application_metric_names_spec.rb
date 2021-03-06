RSpec.describe NewRelic::RestApi::ApplicationMetricNames do
  describe '.requested_path' do
    subject(:requested_path) do
      described_class.requested_path(application_id: 1)
    end

    it 'returns "/applications/:application_id/metrics"' do
      expect(requested_path).to eq("applications/1/metrics")
    end
  end
end
