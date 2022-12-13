# frozen_string_literal: true

module OPNsenseAPI
  module Core
    class Firewall
      # @see https://docs.opnsense.org/development/api/core/firewall.html#id1
      # @see https://github.com/opnsense/core/blob/master/src/opnsense/mvc/app/models/OPNsense/Firewall/Alias.xml
      class Alias
        include OPNsenseAPI::Core

        BASE_PATH = '/firewall/alias'

        def add_item(body = {})
          @client.post("#{BASE_PATH}/addItem", body)
        end

        def del_item(uuid:)
          @client.post("#{BASE_PATH}/delItem/#{uuid}")
        end

        def export(params = {})
          @client.get("#{BASE_PATH}/export", params)
        end

        def get(params = {})
          @client.get("#{BASE_PATH}/get", params)
        end

        def get_alias_uuid(name:)
          @client.get("#{BASE_PATH}/getAliasUUID/#{name}")
        end

        def get_geo_ip(params = {})
          @client.get("#{BASE_PATH}/getGeoIP", params)
        end

        def get_item(uuid:)
          @client.get("#{BASE_PATH}/getItem/#{uuid}")
        end

        def get_table_size(params = {})
          @client.get("#{BASE_PATH}/getTableSize", params)
        end

        def import(body = {})
          @client.post("#{BASE_PATH}/import", body)
        end

        def list_categories(params = {})
          @client.get("#{BASE_PATH}/listCategories", params)
        end

        def list_countries(params = {})
          @client.get("#{BASE_PATH}/listCountries", params)
        end

        def list_network_aliases(params = {})
          @client.get("#{BASE_PATH}/listNetworkAliases", params)
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

        def toggle_item(uuid:, enabled: nil)
          @client.post("#{BASE_PATH}/toggleItem/#{uuid}/#{enabled}")
        end
      end
    end
  end
end
