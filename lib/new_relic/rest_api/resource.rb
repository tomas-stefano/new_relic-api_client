require 'active_support/inflector'

module NewRelic
  module RestApi
    class Resource
      include Virtus.model

      def self.all(options = {})
        response = connection.get(path(options))
        body = response.body[resource_name]

        ResponseCollection.new(response, body: body) do |record|
          new(record)
        end
      end

      def self.find(id)
        response = connection.get(path(id: id))
        body = response.body[resource_name.singularize]

        new(body)
      end

      def self.path(options = {})
        [
          NewRelic::RestApi.config.api_version,
          resource_name,
          options[:id]
        ].compact.join('/').concat('.json')
      end

      def self.resource_name
        name.demodulize.underscore.dasherize.pluralize
      end

      def self.connection
        NewRelic::RestApi.connection
      end
    end
  end
end
