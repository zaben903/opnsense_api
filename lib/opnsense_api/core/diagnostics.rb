# frozen_string_literal: true

# Copyright (C) 2022  Zach Bensley
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Lesser General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

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
