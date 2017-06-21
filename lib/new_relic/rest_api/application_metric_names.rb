module NewRelic
  module RestApi
    class ApplicationMetricNames < NewRelic::RestApi::Resource

      def self.path(options = {})
        ''
      end

      def self.resource_name
        'metrics'
      end
    end
  end
end
