# frozen_string_literal: true

module OPNsenseAPI
  module Core
    # @see https://docs.opnsense.org/development/api/core/trafficshaper.html
    class TrafficShaping
      autoload :Service, 'opnsense_api/core/traffic_shaping/service'
      autoload :Settings, 'opnsense_api/core/traffic_shaping/settings'

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
