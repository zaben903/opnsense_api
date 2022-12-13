# frozen_string_literal: true

module OPNsenseAPI
  module Core
    # @see https://docs.opnsense.org/development/api/core/routes.html
    class Routes
      autoload :Gateway, 'opnsense_api/core/routes/gateway'
      autoload :Routes, 'opnsense_api/core/routes/routes'

      include OPNsenseAPI::Core

      def gateway
        Gateway.new(@client)
      end

      def routes
        Routes.new(@client)
      end
    end
  end
end
