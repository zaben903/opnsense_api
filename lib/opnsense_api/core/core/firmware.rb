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
    class Core
      # @see https://docs.opnsense.org/development/api/core/firmware.html
      class Firmware
        include OPNsenseAPI::Core

        BASE_PATH = '/core/firmware'

        def poweroff(body = {})
          @client.post("#{BASE_PATH}/poweroff", body)
        end

        def reboot(body = {})
          @client.post("#{BASE_PATH}/reboot", body)
        end

        def running(params = {})
          @client.get("#{BASE_PATH}/running", params)
        end

        def get_firmware_config(params = {})
          @client.get("#{BASE_PATH}/getFirmwareConfig", params)
        end

        def get_firmware_options(params = {})
          @client.get("#{BASE_PATH}/getFirmwareOptions", params)
        end

        def set_firmware_config(body = {})
          @client.post("#{BASE_PATH}/setFirmwareConfig", body)
        end

        def info(params = {})
          @client.get("#{BASE_PATH}/info", params)
        end

        def status(params: {}, body: {})
          if body.any?
            @client.post("#{BASE_PATH}/status", body)
          else
            @client.get("#{BASE_PATH}/status", params)
          end
        end

        def audit(body = {})
          @client.post("#{BASE_PATH}/audit", body)
        end

        def update(body = {})
          @client.post("#{BASE_PATH}/update", body)
        end

        def upgrade(body = {})
          @client.post("#{BASE_PATH}/upgrade", body)
        end

        def upgrade_status(params = {})
          @client.get("#{BASE_PATH}/upgradeStatus", params)
        end

        def changelog(version:)
          @client.get("#{BASE_PATH}/changelog/#{version}")
        end
      end
    end
  end
end
