require 'faraday'
require 'faraday_middleware'
require 'faraday/conductivity'
require 'delegate'

module NewRelic
  module RestApi
    class Connection < SimpleDelegator
      def initialize
        @raw_connection = Faraday.new(http_options) do |faraday|
          faraday.request :json
          faraday.request :retry, max: config.retries
          faraday.request :user_agent,
                          app: 'NewRelic::RestApi gem',
                          version: NewRelic::RestApi::VERSION
          faraday.response :json
          faraday.adapter Faraday.default_adapter
        end

        super(@raw_connection)
      end

      private

      def http_options
        {
          url: config.host,
          request: {
            timeout: config.timeout,
            open_timeout: config.open_timeout
          }
        }
      end

      def config
        NewRelic::RestApi.config
      end
    end
  end
end
