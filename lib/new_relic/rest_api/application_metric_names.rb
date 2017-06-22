module NewRelic
  module RestApi
    class ApplicationMetricNames < NewRelic::RestApi::Resource
      attribute :name
      attribute :values, Array

      def self.requested_path(options = {})
        "applications/#{options.fetch(:application_id)}/#{resource_name}"
      end

      def self.resource_name
        'metrics'
      end
    end
  end
end
