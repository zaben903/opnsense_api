# frozen_string_literal: true

module OPNsenseAPI
  module Core
    class Routes
      # @see https://docs.opnsense.org/development/api/core/routes.html#id2
      class Routes
        include OPNsenseAPI::Core

        BASE_PATH = '/routes/routes'

        def add_route(body = {})
          @client.post("#{BASE_PATH}/addroute", body)
        end

        def del_route(body = {}, uuid:)
          @client.post("#{BASE_PATH}/delroute/#{uuid}", body)
        end

        def get(params = {})
          @client.get("#{BASE_PATH}/get", params)
        end

        def get_route(params = {}, uuid: nil)
          @client.get("#{BASE_PATH}/getroute/#{uuid}", params)
        end

        def reconfigure(body = {})
          @client.post("#{BASE_PATH}/reconfigure", body)
        end

        def search_route(body = {})
          @client.post("#{BASE_PATH}/searchroute", body)
        end

        def set(body = {})
          @client.post("#{BASE_PATH}/set", body)
        end

        def set_route(body = {}, uuid:)
          @client.post("#{BASE_PATH}/setroute/#{uuid}", body)
        end

        def toggle_route(body = {}, uuid:, disabled: nil)
          @client.post("#{BASE_PATH}/toggleRoute/#{uuid}/#{disabled}", body)
        end
      end
    end
  end
end
