module NewRelic
  module RestApi
    class Config
      attr_accessor :host,
                    :api_version,
                    :key,
                    :retries,
                    :timeout,
                    :open_timeout

      ## Pass the SSL certificates location
      # For more information read:
      # https://github.com/lostisland/faraday/wiki/Setting-up-SSL-certificates
      #
      attr_accessor :ca_file, :ca_path

      def host
        @host ||= 'https://api.newrelic.com'
      end

      def api_version
        @api_version ||= 'v2'
      end

      def timeout
        @timeout ||= 10
      end

      def open_timeout
        @open_timeout ||= 10
      end

      def retries
        @retries ||= 0
      end
    end
  end
end
