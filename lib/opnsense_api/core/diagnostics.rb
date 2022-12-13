# frozen_string_literal: true

module OPNsenseAPI
  module Core
    # @see https://docs.opnsense.org/development/api/core/diagnostics.html
    class Diagnostics
      autoload :Activity, 'opnsense_api/core/diagnostics/activity'
      autoload :DNS, 'opnsense_api/core/diagnostics/dns'
      autoload :DNSDiagnostics, 'opnsense_api/core/diagnostics/dns_diagnostics'
      autoload :Firewall, 'opnsense_api/core/diagnostics/firewall'
      autoload :Interface, 'opnsense_api/core/diagnostics/interface'
      autoload :LVTemplate, 'opnsense_api/core/diagnostics/lv_template'
      autoload :Netflow, 'opnsense_api/core/diagnostics/netflow'
      autoload :NetworkInsight, 'opnsense_api/core/diagnostics/network_insight'
      autoload :PacketCapture, 'opnsense_api/core/diagnostics/packet_capture'
      autoload :System, 'opnsense_api/core/diagnostics/system'
      autoload :SystemHealth, 'opnsense_api/core/diagnostics/system_health'
      autoload :Traffic, 'opnsense_api/core/diagnostics/traffic'

      include OPNsenseAPI::Core

      def activity
        Activity.new(@client)
      end

      def dns
        DNS.new(@client)
      end

      def dns_diagnostics
        DNSDiagnostics.new(@client)
      end

      def firewall
        Firewall.new(@client)
      end

      def interface
        Interface.new(@client)
      end

      def lv_template
        LVTemplate.new(@client)
      end

      def netflow
        Netflow.new(@client)
      end

      def network_insight
        NetworkInsight.new(@client)
      end

      def packet_capture
        PacketCapture.new(@client)
      end

      def system
        System.new(@client)
      end

      def system_health
        SystemHealth.new(@client)
      end

      def traffic
        Traffic.new(@client)
      end
    end
  end
end
