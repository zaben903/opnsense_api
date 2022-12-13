# frozen_string_literal: true

module OPNsenseAPI
  module Core
    class Core
      class System
        include OPNsenseAPI::Core

        BASE_PATH = 'core/system'

        def dismiss_status
          @client.get("#{BASE_PATH}/dismissStatus")
        end

        def halt
          @client.get("#{BASE_PATH}/halt")
        end

        def reboot
          @client.get("#{BASE_PATH}/reboot")
        end

        def status
          @client.get("#{BASE_PATH}/status")
        end
      end
    end
  end
end
