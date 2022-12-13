# frozen_string_literal: true

module OPNsenseAPI
  module Core
    # @see https://docs.opnsense.org/development/api/core/interfaces.html
    class Interfaces
      autoload :Base, 'opnsense_api/core/interfaces/base'
      autoload :LoopbackSettings, 'opnsense_api/core/interfaces/loopback_settings'
      autoload :VIPSettings, 'opnsense_api/core/interfaces/vip_settings'
      autoload :VLANSettings, 'opnsense_api/core/interfaces/vlan_settings'
      autoload :VXLANSettings, 'opnsense_api/core/interfaces/vxlan_settings'

      include OPNsenseAPI::Core

      def loopback_settings
        LoopbackSettings.new(@client)
      end

      def vip_settings
        VIPSettings.new(@client)
      end

      def vlan_settings
        VLANSettings.new(@client)
      end

      def vxlan_settings
        VXLANSettings.new(@client)
      end
    end
  end
end
