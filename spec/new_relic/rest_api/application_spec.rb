RSpec.describe NewRelic::RestApi::Application do
  describe '#metric_names' do
    it 'responds to metric names' do
      respond_to(:metric_names)
    end
  end

  describe '#metric_data' do
    it 'responds to metric data' do
      respond_to(:metric_data)
    end
  end
end
