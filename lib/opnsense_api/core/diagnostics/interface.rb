# frozen_string_literal: true

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
