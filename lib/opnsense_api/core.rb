# frozen_string_literal: true

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
