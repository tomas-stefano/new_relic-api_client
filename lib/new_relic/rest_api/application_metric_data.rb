module NewRelic
  module RestApi
    class ApplicationMetricData < NewRelic::RestApi::Resource
      attribute :name, Array
      attribute :timeslices, Array

      def self.requested_path(options = {})
        "applications/#{options.fetch(:application_id)}/metrics/data"
      end

      def self.resource_name
        ['metric_data', 'metrics']
      end
    end
  end
end
