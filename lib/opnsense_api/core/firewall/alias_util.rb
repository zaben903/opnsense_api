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
    class Firewall
      # @see https://docs.opnsense.org/development/api/core/firewall.html#id2
      # NOTE: using `id` instead of `alias` as it is a reserved keyword
      class AliasUtil
        include OPNsenseAPI::Core

        BASE_PATH = '/firewall/alias_util'

        def add(id:, body: {})
          @client.post("#{BASE_PATH}/add/#{id}", body)
        end

        def aliases(params = {})
          @client.get("#{BASE_PATH}/aliases", params)
        end

        def delete(id:)
          @client.post("#{BASE_PATH}/delete/#{id}")
        end

        def find_references(body = {})
          @client.post("#{BASE_PATH}/findReferences", body)
        end

        def flush(id:, body: {})
          @client.post("#{BASE_PATH}/flush/#{id}", body)
        end

        def list(id:, params: {})
          @client.get("#{BASE_PATH}/list/#{id}", params)
        end

        def update_bogons(params = {})
          @client.get("#{BASE_PATH}/updateBogons", params)
        end
      end
    end
  end
end
