# frozen_string_literal: true

module OPNsenseAPI
  module Core
    class Unbound
      # @see https://docs.opnsense.org/development/api/core/unbound.html#id2
      class Service
        include OPNsenseAPI::Core

        BASE_PATH = '/diagnostics/service'

        def dnsbl(params = {})
          @client.get("#{BASE_PATH}/dnsbl", params)
        end

        def reconfigure(params = {})
          @client.get("#{BASE_PATH}/reconfigure", params)
        end

        def restart(body = {})
          @client.post("#{BASE_PATH}/restart", body)
        end

        def start(body = {})
          @client.post("#{BASE_PATH}/start", body)
        end

        def status(params = {})
          @client.get("#{BASE_PATH}/status", params)
        end

        def stop(body = {})
          @client.post("#{BASE_PATH}/stop", body)
        end
      end
    end
  end
end
