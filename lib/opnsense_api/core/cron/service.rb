# frozen_string_literal: true

module OPNsenseAPI
  module Core
    class Cron
      class Service
        include OPNsenseAPI::Core

        BASE_PATH = '/cron/service'

        def reconfigure(body: {})
          @client.post("#{BASE_PATH}/reconfigure", body)
        end
      end
    end
  end
end
