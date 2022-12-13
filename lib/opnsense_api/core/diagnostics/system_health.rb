# frozen_string_literal: true

module OPNsenseAPI
  module Core
    class Diagnostics
      class SystemHealth
        include OPNsenseAPI::Core

        BASE_PATH = '/diagnostics/systemhealth'

        def get_interfaces(params = {})
          @client.get("#{BASE_PATH}/getInterfaces", params)
        end

        def get_rrd_list(params = {})
          @client.get("#{BASE_PATH}/getRRDList", params)
        end
      end
    end
  end
end
