# frozen_string_literal: true

module OPNsenseAPI
  module Core
    class Routes
      # @see https://docs.opnsense.org/development/api/core/routes.html#id1
      class Gateway
        include OPNsenseAPI::Core

        BASE_PATH = '/routes/gateway'

        def status(params = {})
          @client.get("#{BASE_PATH}/status", params)
        end
      end
    end
  end
end
