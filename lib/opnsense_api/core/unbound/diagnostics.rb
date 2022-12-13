# frozen_string_literal: true

module OPNsenseAPI
  module Core
    class Unbound
      # @see https://docs.opnsense.org/development/api/core/unbound.html#id1
      class Diagnostics
        include OPNsenseAPI::Core

        BASE_PATH = '/unbound/diagnostics'

        def dump_cache(params = {})
          @client.get("#{BASE_PATH}/dumpcache", params)
        end

        def dump_infra(params = {})
          @client.get("#{BASE_PATH}/dumpinfra", params)
        end

        def list_insecure(params = {})
          @client.get("#{BASE_PATH}/listinsecure", params)
        end

        def list_local_data(params = {})
          @client.get("#{BASE_PATH}/listlocaldata", params)
        end

        def list_local_zones(params = {})
          @client.get("#{BASE_PATH}/listlocalzones", params)
        end

        def stats(params = {})
          @client.get("#{BASE_PATH}/stats", params)
        end
      end
    end
  end
end
