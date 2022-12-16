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
    class Proxy
      # @see https://docs.opnsense.org/development/api/core/proxy.html#id3
      class Template
        include OPNsenseAPI::Core

        BASE_PATH = '/proxy/template'

        def get(params = {})
          @client.get("#{BASE_PATH}/get", params)
        end

        def reset(body = {})
          @client.post("#{BASE_PATH}/reset", body)
        end

        def set(body = {})
          @client.post("#{BASE_PATH}/set", body)
        end
      end
    end
  end
end
