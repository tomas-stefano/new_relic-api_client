require 'virtus'
require 'new_relic/rest_api/version'
require 'new_relic/rest_api/config'
require 'new_relic/rest_api/connection'
require 'new_relic/rest_api/resource'
require 'new_relic/rest_api/response_collection'
require 'new_relic/rest_api/application'

module NewRelic
  module RestApi
    def self.config
      @config ||= NewRelic::RestApi::Config.new

      yield(@config) if block_given?

      @config
    end

    def self.connection
      @connection ||= NewRelic::RestApi::Connection.new
    end
  end
end
