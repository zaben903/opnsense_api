# frozen_string_literal: true

module OPNsenseAPI
  module Core
    # @see https://docs.opnsense.org/development/api/core/monit.html
    class Monit
      autoload :Service, 'opnsense_api/core/monit/service'
      autoload :Settings, 'opnsense_api/core/monit/settings'
      autoload :Status, 'opnsense_api/core/monit/status'

      include OPNsenseAPI::Core

      def service
        Service.new(@client)
      end

      def settings
        Settings.new(@client)
      end

      def status
        Status.new(@client)
      end
    end
  end
end
