# frozen_string_literal: true

module OPNsenseAPI
  module Core
    # @see https://docs.opnsense.org/development/api/core/openvpn.html
    class OpenVPN
      autoload :Export, 'opnsense_api/core/open_vpn/export'

      include OPNsenseAPI::Core

      def export
        Export.new(@client)
      end
    end
  end
end
