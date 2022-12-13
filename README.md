# OPNsenseAPI

Library interacting with OPNsense's API.

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add opnsense_api

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install opnsense_api

## Usage

To setup the client, you need to provide the API key and the API secret.
You can create one in the OPNsense web interface under System -> Access -> Users -> <username> -> API Keys.

```ruby
client = OPNsenseAPI::Client.new(
  host: 'https://opnsense.example.com',
  api_key: '<api_key>',
  api_secret: '<api_secret>'
)
```

### Captive Portal

To interact with the captive portal module:
```ruby
client.captive_portal
```

The controllers can be accessed under the `captive_portal` method.
```ruby
client.captive_portal.access

client.captive_portal.service

client.captive_portal.session

client.captive_portal.settings

client.captive_portal.voucher
```

### Core

To interact with the core module:
```ruby
client.core
```

The controllers can be accessed under the `core` method.
```ruby
client.core.firmware

client.core.menu

client.core.system
```

### Cron

To interact with cron module:
```ruby
client.core
```

The controllers can be accessed under the `cron` method.
```ruby
client.core.service

client.core.settings
```

### Diagnostics

To interact with the diagnostics module:
```ruby
client.diagnostics
```

The controllers can be accessed under the `diagnostics` method.
```ruby
client.diagnostics.activity

client.diagnostics.dns

client.diagnostics.dns_diagnostics

client.diagnostics.firewall

client.diagnostics.interface

client.diagnostics.lv_template

client.diagnostics.netflow

client.diagnostics.network_insight

client.diagnostics.packet_capture

client.diagnostics.system

client.diagnostics.system_health

client.diagnostics.traffic
```

### Firewall

To interact with the firewall module:
```ruby
client.firewall
```

The controllers can be accessed under the `firewall` method.
```ruby
client.firewall.alias

client.firewall.alias_util

client.firewall.category

client.firewall.filter_util
```

### IDS

To interact with the IDS module:
```ruby
client.ids
```

The controllers can be accessed under the `ids` method.
```ruby
client.ids.service

client.ids.settings
```

### Interfaces

To interact with the interfaces module:
```ruby
client.interfaces
```

The controllers can be accessed under the `interfaces` method.
```ruby
client.interfaces.loopback_settings

client.interfaces.vip_settings

client.interfaces.vlan_settings

client.interfaces.vxlan_settings
```

### IPSec

To interact with the IPSec module:
```ruby
client.ipsec
```

The controllers can be accessed under the `ipsec` method.
```ruby
client.ipsec.key_pairs

client.ipsec.leases

client.ipsec.legacy_subsystem

client.ipsec.pre_shared_keys

client.ipsec.sad

client.ipsec.service

client.ipsec.sessions

client.ipsec.spd

client.ipsec.tunnel
```

### Monit

To interact with the monit module:
```ruby
client.monit
```

The controllers can be accessed under the `monit` method.
```ruby
client.monit.service

client.monit.settings

client.monit.status
```

### OpenVPN

To interact with the OpenVPN module:
```ruby
client.open_vpn
```

The controllers can be accessed under the `open_vpn` method.
```ruby
client.open_vpn.export
```

### Proxy

To interact with the proxy module:
```ruby
client.proxy
```

The controllers can be accessed under the `proxy` method.
```ruby
client.proxy.service

client.proxy.settings

client.proxy.template
```

### Routes

To interact with the routes module:
```ruby
client.routes
```

The controllers can be accessed under the `routes` method.
```ruby
client.routes.gateway

client.routes.routes
```

### Syslog

To interact with the syslog module:
```ruby
client.syslog
```

The controllers can be accessed under the `syslog` method.
```ruby
client.syslog.service

client.syslog.settings
```

### Traffic Shaping

To interact with the traffic shaping module:
```ruby
client.traffic_shaping
```

The controllers can be accessed under the `traffic_shaping` method.
```ruby
client.traffic_shaping.service

client.traffic_shaping.settings
```

### Unbound

To interact with the unbound module:
```ruby
client.unbound
```

The controllers can be accessed under the `unbound` method.
```ruby
client.unbound.diagnostics

client.unbound.service

client.unbound.settings
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/zaben903/opnsense_api.

## License

The gem is available as open source under the terms of the [Lesser GNU General Public Licence](https://www.gnu.org/licenses/).
