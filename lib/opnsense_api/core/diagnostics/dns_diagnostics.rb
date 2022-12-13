# frozen_string_literal: true

module OPNsenseAPI
  module Core
    class Diagnostics
      class DNSDiagnostics
        include OPNsenseAPI::Core

        BASE_PATH = '/diagnostics/dns_diagnostics'

        def get(params = {})
          @client.get("#{BASE_PATH}/get", params)
        end

        def set(params: {}, body: {})
          if params
            @client.get("#{BASE_PATH}/set", params)
          else
            @client.post("#{BASE_PATH}/set", body)
          end
        end
      end
    end
  end
end
