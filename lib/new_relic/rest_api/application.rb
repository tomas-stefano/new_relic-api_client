require 'new_relic/rest_api/application_metric_names'
require 'new_relic/rest_api/application_metric_data'

module NewRelic
  module RestApi
    class Application < NewRelic::RestApi::Resource
      attribute :id, Integer
      attribute :name, String
      attribute :language, String
      attribute :health_status, String
      attribute :reporting, Boolean
      attribute :last_reported_at, DateTime
      attribute :application_summary, Hash
      attribute :settings, Hash
      attribute :links, Array

      def metric_names
        ApplicationMetricNames.all(application_id: id)
      end

      def metric_data(names: [])
        ApplicationMetricData.all(
          application_id: id,
          params: { names: names }
        )
      end
    end
  end
end
