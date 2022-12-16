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
    # @see https://docs.opnsense.org/development/api/core/interfaces.html
    class Interfaces
      autoload :Base, 'opnsense_api/core/interfaces/base'
      autoload :LoopbackSettings, 'opnsense_api/core/interfaces/loopback_settings'
      autoload :VIPSettings, 'opnsense_api/core/interfaces/vip_settings'
      autoload :VLANSettings, 'opnsense_api/core/interfaces/vlan_settings'
      autoload :VXLANSettings, 'opnsense_api/core/interfaces/vxlan_settings'

      include OPNsenseAPI::Core

      def loopback_settings
        LoopbackSettings.new(@client)
      end

      def vip_settings
        VIPSettings.new(@client)
      end

      def vlan_settings
        VLANSettings.new(@client)
      end

      def vxlan_settings
        VXLANSettings.new(@client)
      end
    end
  end
end
