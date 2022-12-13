# frozen_string_literal: true

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
