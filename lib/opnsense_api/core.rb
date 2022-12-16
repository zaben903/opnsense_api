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
  # @see https://docs.opnsense.org/development/api.html#core-api
  module Core
    autoload :CaptivePortal, 'opnsense_api/core/captive_portal'
    autoload :Core, 'opnsense_api/core/core'
    autoload :Cron, 'opnsense_api/core/cron'
    autoload :Diagnostics, 'opnsense_api/core/diagnostics'
    autoload :Firewall, 'opnsense_api/core/firewall'
    autoload :Firmware, 'opnsense_api/core/firmware'
    autoload :IDS, 'opnsense_api/core/ids'
    autoload :Interfaces, 'opnsense_api/core/interfaces'
    autoload :IPSec, 'opnsense_api/core/ipsec'
    autoload :Monit, 'opnsense_api/core/monit'
    autoload :OpenVPN, 'opnsense_api/core/open_vpn'
    autoload :Proxy, 'opnsense_api/core/proxy'
    autoload :Routes, 'opnsense_api/core/routes'
    autoload :Syslog, 'opnsense_api/core/syslog'
    autoload :TrafficShaper, 'opnsense_api/core/traffic_shaper'
    autoload :Unbound, 'opnsense_api/core/unbound'

    def initialize(client)
      @client = client
    end
  end
end
