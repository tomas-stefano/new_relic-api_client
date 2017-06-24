module NewRelic
  module RestApi
    class ApplicationMetricData < NewRelic::RestApi::Resource
      attribute :from, Time
      attribute :to, Time
      attribute :metrics, Array

      def self.requested_path(options = {})
        "applications/#{options.fetch(:application_id)}/metrics/data"
      end

      def self.resource_name
        "metrics_data"
      end
    end
  end
end
