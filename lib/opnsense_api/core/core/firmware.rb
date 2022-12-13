# frozen_string_literal: true

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
