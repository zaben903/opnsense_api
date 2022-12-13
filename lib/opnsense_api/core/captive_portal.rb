# frozen_string_literal: true

module OPNsenseAPI
  module Core
    # @see https://docs.opnsense.org/development/api/core/captiveportal.html
    class CaptivePortal
      autoload :Access, 'opnsense_api/core/captive_portal/access'
      autoload :Service, 'opnsense_api/core/captive_portal/service'
      autoload :Session, 'opnsense_api/core/captive_portal/session'
      autoload :Settings, 'opnsense_api/core/captive_portal/settings'
      autoload :Voucher, 'opnsense_api/core/captive_portal/voucher'

      include OPNsenseAPI::Core

      def access
        Access.new(@client)
      end

      def service
        Service.new(@client)
      end

      def session
        Session.new(@client)
      end

      def settings
        Settings.new(@client)
      end

      def voucher
        Voucher.new(@client)
      end
    end
  end
end
