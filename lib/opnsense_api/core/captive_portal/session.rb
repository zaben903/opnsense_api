# frozen_string_literal: true

module OPNsenseAPI
  module Core
    class CaptivePortal
      class Session
        include OPNsenseAPI::Core

        BASE_PATH = '/captiveportal/session'

        def connect(zoneid: 0, body: {})
          @client.post("#{BASE_PATH}/connect/#{zoneid}", body)
        end

        def disconnect(zoneid: 0, body: {})
          @client.post("#{BASE_PATH}/disconnect/#{zoneid}", body)
        end

        def list(zoneid: 0)
          @client.get("#{BASE_PATH}/list/#{zoneid}")
        end

        def zones
          @client.get("#{BASE_PATH}/zones")
        end
      end
    end
  end
end
