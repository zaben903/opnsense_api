# frozen_string_literal: true

module OPNsenseAPI
  module Core
    class CaptivePortal
      class Access
        include OPNsenseAPI::Core

        BASE_PATH = '/captiveportal/access'

        def logoff(zoneid: 0)
          @client.get("#{BASE_PATH}/logoff/#{zoneid}")
        end

        def logon(zoneid: 0, body: {})
          @client.post("#{BASE_PATH}/logon/#{zoneid}", body)
        end

        def status(zoneid: 0, body: {})
          @client.post("#{BASE_PATH}/status/#{zoneid}", body)
        end
      end
    end
  end
end
