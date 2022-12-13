# frozen_string_literal: true

module OPNsenseAPI
  module Core
    # @see https://docs.opnsense.org/development/api/core/ids.html
    class IDS
      autoload :Service, 'opnsense_api/core/ids/service'
      autoload :Settings, 'opnsense_api/core/ids/settings'

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
