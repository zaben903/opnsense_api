# frozen_string_literal: true

module OPNsenseAPI
  module Core
    # @see https://docs.opnsense.org/development/api/core/cron.html
    class Cron
      autoload :Service, 'opnsense_api/core/cron/service'
      autoload :Settings, 'opnsense_api/core/cron/settings'

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
