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
    class TrafficShaping
      # @see https://docs.opnsense.org/development/api/core/trafficshaper.html#id1
      class Service
        include OPNsenseAPI::Core

        BASE_PATH = '/trafficshaper/service'

        def flush_reload(body = {})
          @client.post("#{BASE_PATH}/flushReload", body)
        end

        def reconfigure(body = {})
          @client.post("#{BASE_PATH}/reconfigure", body)
        end

        def statistics(params = {})
          @client.get("#{BASE_PATH}/statistics", params)
        end
      end
    end
  end
end
