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
      # @see https://docs.opnsense.org/development/api/core/ipsec.html#id9
      class Tunnel
        include OPNsenseAPI::Core

        BASE_PATH = '/ipsec/tunnel'

        def del_phase_1(body = {}, ikeid:)
          @client.post("#{BASE_PATH}/delPhase1/#{ikeid}", body)
        end

        def del_phase_2(body = {}, seqid:)
          @client.post("#{BASE_PATH}/delPhase2/#{seqid}", body)
        end

        def search_phase_1(params = {})
          @client.get("#{BASE_PATH}/searchPhase1", params)
        end

        def search_phase_2(params = {})
          @client.get("#{BASE_PATH}/searchPhase2", params)
        end

        def toggle(body = {}, enabled: nil)
          @client.post("#{BASE_PATH}/toggle/#{enabled}", body)
        end

        def toggle_phase_1(body = {}, ikeid:, enabled: nil)
          @client.post("#{BASE_PATH}/togglePhase1/#{ikeid}/#{enabled}", body)
        end

        def toggle_phase_2(body = {}, seqid:, enabled: nil)
          @client.post("#{BASE_PATH}/togglePhase2/#{seqid}/#{enabled}", body)
        end
      end
    end
  end
end
