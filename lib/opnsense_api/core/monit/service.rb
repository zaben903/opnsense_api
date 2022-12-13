# frozen_string_literal: true

module OPNsenseAPI
  module Core
    class Monit
      # @see https://docs.opnsense.org/development/api/core/monit.html#id1
      class Service
        include OPNsenseAPI::Core

        BASE_PATH = '/monit/service'

        def check(body = {})
          @client.post("#{BASE_PATH}/check", body)
        end

        def reconfigure(body = {})
          @client.post("#{BASE_PATH}/reconfigure", body)
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
