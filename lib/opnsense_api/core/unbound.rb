# frozen_string_literal: true

module OPNsenseAPI
  module Core
    # @see https://docs.opnsense.org/development/api/core/unbound.html
    class Unbound
      autoload :Diagnostics, 'opnsense_api/core/unbound/diagnostics'
      autoload :Service, 'opnsense_api/core/unbound/service'
      autoload :Settings, 'opnsense_api/core/unbound/settings'

      include OPNsenseAPI::Core

      def diagnostics
        Diagnostics.new(@client)
      end

      def service
        Service.new(@client)
      end

      def settings
        Settings.new(@client)
      end
    end
  end
end
