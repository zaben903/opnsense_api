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
