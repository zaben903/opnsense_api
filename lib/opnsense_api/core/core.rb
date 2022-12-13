# frozen_string_literal: true

module OPNsenseAPI
  module Core
    # @see https://docs.opnsense.org/development/api/core/core.html
    class Core
      autoload :Firmware, 'opnsense_api/core/core/firmware'
      autoload :Menu, 'opnsense_api/core/core/menu'
      autoload :System, 'opnsense_api/core/core/system'

      include OPNsenseAPI::Core

      def firmware
        Firmware.new(@client)
      end

      def menu
        Menu.new(@client)
      end

      def system
        System.new(@client)
      end
    end
  end
end
