# frozen_string_literal: true

module OPNsenseAPI
  module Core
    class TrafficShaping
      # @see https://docs.opnsense.org/development/api/core/trafficshaper.html#id1
      class Service
        include OPNsenseAPI::Core

        BASE_PATH = '/trafficshaper/service'

        def flush_reload(body = {})
          @client.post("#{BASE_PATH}/flushReload", body)
        end

        def reconfigure(body = {})
          @client.post("#{BASE_PATH}/reconfigure", body)
        end

        def statistics(params = {})
          @client.get("#{BASE_PATH}/statistics", params)
        end
      end
    end
  end
end
