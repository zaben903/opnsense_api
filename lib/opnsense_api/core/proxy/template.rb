# frozen_string_literal: true

module OPNsenseAPI
  module Core
    class Proxy
      # @see https://docs.opnsense.org/development/api/core/proxy.html#id3
      class Template
        include OPNsenseAPI::Core

        BASE_PATH = '/proxy/template'

        def get(params = {})
          @client.get("#{BASE_PATH}/get", params)
        end

        def reset(body = {})
          @client.post("#{BASE_PATH}/reset", body)
        end

        def set(body = {})
          @client.post("#{BASE_PATH}/set", body)
        end
      end
    end
  end
end
