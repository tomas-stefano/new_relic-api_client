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
    end
  end
end
