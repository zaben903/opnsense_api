# frozen_string_literal: true

module OPNsenseAPI
  module Core
    class Syslog
      # @see https://docs.opnsense.org/development/api/core/syslog.html#id2
      class Settings
        include OPNsenseAPI::Core

        BASE_PATH = '/syslog/settings'

        def add_destination(body = {})
          @client.post("#{BASE_PATH}/addDestination", body)
        end

        def del_destination(body = {})
          @client.post("#{BASE_PATH}/delDestination", body)
        end

        def get(params = {})
          @client.get("#{BASE_PATH}/get", params)
        end

        def get_destination(params = {})
          @client.get("#{BASE_PATH}/getDestination", params)
        end

        def search_destination(body = {})
          @client.post("#{BASE_PATH}/searchDestination", body)
        end

        def set(body = {})
          @client.post("#{BASE_PATH}/set", body)
        end

        def set_destination(body = {}, uuid:)
          @client.post("#{BASE_PATH}/setDestination/#{uuid}", body)
        end

        def toggle_destination(body = {}, uuid:, enabled: nil)
          @client.post("#{BASE_PATH}/toggleDestination/#{uuid}/#{enabled}", body)
        end
      end
    end
  end
end
