# frozen_string_literal: true

module OPNsenseAPI
  module Core
    class Proxy
      # @see https://docs.opnsense.org/development/api/core/proxy.html#id1
      class Service
        include OPNsenseAPI::Core

        BASE_PATH = '/proxy/service'

        def download_acls(body = {})
          @client.post("#{BASE_PATH}/downloadacls", body)
        end

        def fetch_acls(body = {})
          @client.post("#{BASE_PATH}/fetchacls", body)
        end

        def reconfigure(body = {})
          @client.post("#{BASE_PATH}/reconfigure", body)
        end

        def refresh_template(body = {})
          @client.post("#{BASE_PATH}/refreshTemplate", body)
        end

        def reset(body = {})
          @client.post("#{BASE_PATH}/reset", body)
        end

        def restart(body = {})
          @client.post("#{BASE_PATH}/restart", body)
        end

        def start(body = {})
          @client.post("#{BASE_PATH}/start", body)
        end

        def status(body = {})
          @client.post("#{BASE_PATH}/status", body)
        end

        def stop(body = {})
          @client.post("#{BASE_PATH}/stop", body)
        end
      end
    end
  end
end
