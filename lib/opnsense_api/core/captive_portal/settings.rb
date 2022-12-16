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
    class CaptivePortal
      class Settings
        include OPNsenseAPI::Core

        BASE_PATH = '/captiveportal/settings'

        def add_zone(body = {})
          @client.post("#{BASE_PATH}/addZone", body)
        end

        def del_zone(uuid:)
          @client.post("#{BASE_PATH}/delZone/#{uuid}")
        end

        def get
          @client.get(BASE_PATH)
        end

        def get_zone(uuid:)
          @client.get("#{BASE_PATH}/getZone/#{uuid}")
        end

        def search_zones(body = {})
          @client.post("#{BASE_PATH}/searchZones", body)
        end

        def set_zone(uuid:, body: {})
          @client.post("#{BASE_PATH}/setZone/#{uuid}", body)
        end

        def toggle_zone(uuid:, enabled: nil, body: {})
          @client.post("#{BASE_PATH}/toggleZone/#{uuid}/#{enabled}", body)
        end
      end
    end
  end
end
