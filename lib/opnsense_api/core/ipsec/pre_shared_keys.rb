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
    class IPSec
      # @see https://docs.opnsense.org/development/api/core/ipsec.html#id4
      class PreSharedKeys
        include OPNsenseAPI::Core

        BASE_PATH = '/ipsec/pre_shared_keys'

        def add_item(body = {})
          @client.post("#{BASE_PATH}/addItem", body)
        end

        def del_item(uuid:)
          @client.post("#{BASE_PATH}/delItem/#{uuid}")
        end

        def get(params = {})
          @client.get("#{BASE_PATH}/get", params)
        end

        def get_item(uuid: nil)
          @client.get("#{BASE_PATH}/getItem/#{uuid}")
        end

        def reconfigure(body = {})
          @client.post("#{BASE_PATH}/reconfigure", body)
        end

        def search_item(body = {})
          @client.post("#{BASE_PATH}/searchItem", body)
        end

        def set(body = {})
          @client.post("#{BASE_PATH}/set", body)
        end

        def set_item(uuid:, body: {})
          @client.post("#{BASE_PATH}/setItem/#{uuid}", body)
        end
      end
    end
  end
end
