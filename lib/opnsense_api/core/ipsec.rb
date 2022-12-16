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
    # @see https://docs.opnsense.org/development/api/core/ipsec.html
    class IPSec
      autoload :KeyPairs, 'opnsense_api/core/interfaces/key_pairs'
      autoload :leases, 'opnsense_api/core/interfaces/leases'
      autoload :LegacySubsystem, 'opnsense_api/core/interfaces/legacy_subsystem'
      autoload :PreSharedKeys, 'opnsense_api/core/interfaces/pre_shared_keys'
      autoload :SAD, 'opnsense_api/core/interfaces/sad'
      autoload :Service, 'opnsense_api/core/interfaces/service'
      autoload :Sessions, 'opnsense_api/core/interfaces/sessions'
      autoload :SPD, 'opnsense_api/core/interfaces/spd'
      autoload :Tunnel, 'opnsense_api/core/interfaces/tunnel'

      include OPNsenseAPI::Core

      def key_pairs
        KeyPairs.new(@client)
      end

      def leases
        Leases.new(@client)
      end

      def legacy_subsystem
        LegacySubsystem.new(@client)
      end

      def pre_shared_keys
        PreSharedKeys.new(@client)
      end

      def sad
        SAD.new(@client)
      end

      def service
        Service.new(@client)
      end

      def sessions
        Sessions.new(@client)
      end

      def spd
        SPD.new(@client)
      end

      def tunnel
        Tunnel.new(@client)
      end
    end
  end
end
