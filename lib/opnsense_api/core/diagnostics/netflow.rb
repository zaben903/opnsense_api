# frozen_string_literal: true

module OPNsenseAPI
  module Core
    class Diagnostics
      class Netflow
        include OPNsenseAPI::Core

        BASE_PATH = '/diagnostics/netflow'

        def cache_stats(params = {})
          @client.get("#{BASE_PATH}/cacheStats", params)
        end

        def get_config(params = {})
          @client.get("#{BASE_PATH}/getConfig", params)
        end

        def is_enabled(params = {})
          @client.get("#{BASE_PATH}/isEnabled", params)
        end

        def reconfigure(body = {})
          @client.post("#{BASE_PATH}/reconfigure", body)
        end

        def set_config(params = {})
          @client.get("#{BASE_PATH}/setConfig", params)
        end

        def status(params = {})
          @client.get("#{BASE_PATH}/status", params)
        end
      end
    end
  end
end
