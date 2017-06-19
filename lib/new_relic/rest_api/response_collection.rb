module NewRelic
  module RestApi
    class ResponseCollection < Array
      attr_reader :response, :body, :collection

      def initialize(response, options, &block)
        @response = response
        @body = options.fetch(:body)
        @collection = @body.map(&block)

        super(@collection)
      end

      def inspect
        "#<ResponseCollection:#{object_id} #{collection}>"
      end
    end
  end
end
