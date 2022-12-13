# frozen_string_literal: true

module OPNsenseAPI
  module Core
    # @see https://docs.opnsense.org/development/api/core/proxy.html
    class Proxy
      autoload :Service, 'opnsense_api/core/proxy/service'
      autoload :Settings, 'opnsense_api/core/proxy/settings'
      autoload :Template, 'opnsense_api/core/proxy/template'

      include OPNsenseAPI::Core

      def service
        Service.new(@client)
      end

      def settings
        Settings.new(@client)
      end

      def template
        Template.new(@client)
      end
    end
  end
end
