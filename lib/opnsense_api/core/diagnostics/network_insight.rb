# frozen_string_literal: true

module OPNsenseAPI
  module Core
    class Diagnostics
      class NetworkInsight
        include OPNsenseAPI::Core

        BASE_PATH = '/diagnostics/networkinsight'

        def get_interfaces(params = {})
          @client.get("#{BASE_PATH}/getInterfaces", params)
        end

        def get_metadata(params = {})
          @client.get("#{BASE_PATH}/getMetadata", params)
        end

        def get_protocols(params = {})
          @client.get("#{BASE_PATH}/getProtocols", params)
        end

        def get_services(params = {})
          @client.get("#{BASE_PATH}/getServices", params)
        end
      end
    end
  end
end
