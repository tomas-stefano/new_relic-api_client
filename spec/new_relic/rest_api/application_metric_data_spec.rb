RSpec.describe NewRelic::RestApi::ApplicationMetricData do
  describe '.requested_path' do
    subject(:requested_path) do
      described_class.requested_path(application_id: 1)
    end

    it 'returns "/applications/:application_id/metrics"' do
      expect(requested_path).to eq("applications/1/metrics/data")
    end
  end

  describe '.resource_name' do
    it 'returns an array of nested nodes' do
      expect(described_class.resource_name).to eq(['metric_data', 'metrics'])
    end
  end
end
