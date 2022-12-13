# frozen_string_literal: true

module OPNsenseAPI
  module Core
    # @see https://docs.opnsense.org/development/api/core/syslog.html
    class Syslog
      autoload :Service, 'opnsense_api/core/syslog/service'
      autoload :Settings, 'opnsense_api/core/syslog/settings'

      include OPNsenseAPI::Core

      def service
        Service.new(@client)
      end

      def settings
        Settings.new(@client)
      end
    end
  end
end
