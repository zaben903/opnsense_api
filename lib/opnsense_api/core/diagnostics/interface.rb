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
    class Diagnostics
      class Interface
        include OPNsenseAPI::Core

        BASE_PATH = '/diagnostics/interface'

        def carp_status(status:)
          @client.post("#{BASE_PATH}/carpStatus/#{status}")
        end

        def del_route(body = {})
          @client.post("#{BASE_PATH}/delRoute", body)
        end

        def flush_arp(body = {})
          @client.post("#{BASE_PATH}/flushArp", body)
        end

        def get_arp(params = {})
          @client.get("#{BASE_PATH}/getArp", params)
        end

        def get_bpf_statistics(params = {})
          @client.get("#{BASE_PATH}/getBpfStatistics", params)
        end

        def get_interface_config(params = {})
          @client.get("#{BASE_PATH}/getInterfaceConfig", params)
        end

        def get_interface_names(params = {})
          @client.get("#{BASE_PATH}/getInterfaceNames", params)
        end

        def get_memory_statistics(params = {})
          @client.get("#{BASE_PATH}/getMemoryStatistics", params)
        end

        def get_ndp(params = {})
          @client.get("#{BASE_PATH}/getNdp", params)
        end

        def get_netisr_statistics(params = {})
          @client.get("#{BASE_PATH}/getNetisrStatistics", params)
        end

        def get_pf_sync_statistics(params = {})
          @client.get("#{BASE_PATH}/getPfSyncStatistics", params)
        end

        def get_protocol_statistics(params = {})
          @client.get("#{BASE_PATH}/getProtocolStatistics", params)
        end

        def get_routes(params = {})
          @client.get("#{BASE_PATH}/getRoutes", params)
        end

        def get_socket_statistics(params = {})
          @client.get("#{BASE_PATH}/getSocketStatistics", params)
        end

        def get_vip_status(params = {})
          @client.get("#{BASE_PATH}/getVipStatus", params)
        end

        def search_arp(params = {})
          @client.get("#{BASE_PATH}/searchArp", params)
        end

        def search_ndp(params = {})
          @client.get("#{BASE_PATH}/searchNdp", params)
        end
      end
    end
  end
end
