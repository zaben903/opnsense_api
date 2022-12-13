# frozen_string_literal: true

module OPNsenseAPI
  module Core
    class Proxy
      # @see https://docs.opnsense.org/development/api/core/proxy.html#id2
      class Settings
        include OPNsenseAPI::Core

        BASE_PATH = '/proxy/settings'

        def add_pac_match(body = {})
          @client.post("#{BASE_PATH}/addPACMatch", body)
        end

        def add_pac_proxy(body = {})
          @client.post("#{BASE_PATH}/addPACProxy", body)
        end

        def add_pac_rule(body = {})
          @client.post("#{BASE_PATH}/addPACRule", body)
        end

        def add_remote_blacklist(body = {})
          @client.post("#{BASE_PATH}/addRemoteBlacklist", body)
        end

        def del_pac_match(body = {}, uuid:)
          @client.post("#{BASE_PATH}/delPACMatch/#{uuid}", body)
        end

        def del_pac_proxy(body = {}, uuid:)
          @client.post("#{BASE_PATH}/delPACProxy/#{uuid}", body)
        end

        def del_pac_rule(body = {}, uuid:)
          @client.post("#{BASE_PATH}/delPACRule/#{uuid}", body)
        end

        def del_remote_blacklist(body = {}, uuid:)
          @client.post("#{BASE_PATH}/delRemoteBlacklist/#{uuid}", body)
        end

        def fetch_rb_cron(body = {})
          @client.post("#{BASE_PATH}/fetchRBCron", body)
        end

        def get(params = {})
          @client.get("#{BASE_PATH}/get", params)
        end

        def get_pac_match(params = {}, uuid: nil)
          @client.get("#{BASE_PATH}/getPACMatch/#{uuid}", params)
        end

        def get_pac_proxy(params = {}, uuid: nil)
          @client.get("#{BASE_PATH}/getPACProxy/#{uuid}", params)
        end

        def get_pac_rule(params = {}, uuid: nil)
          @client.get("#{BASE_PATH}/getPACRule/#{uuid}", params)
        end

        def get_remote_blacklist(params = {}, uuid: nil)
          @client.get("#{BASE_PATH}/getRemoteBlacklist/#{uuid}", params)
        end

        def search_pac_match(body = {})
          @client.post("#{BASE_PATH}/searchPACMatch", body)
        end

        def search_pac_proxy(body = {})
          @client.post("#{BASE_PATH}/searchPACProxy", body)
        end

        def search_pac_rule(body = {})
          @client.post("#{BASE_PATH}/searchPACRule", body)
        end

        def search_remote_blacklists(body = {})
          @client.post("#{BASE_PATH}/searchRemoteBlacklists", body)
        end

        def set(body = {})
          @client.post("#{BASE_PATH}/set", body)
        end

        def set_pac_match(body = {}, uuid:)
          @client.post("#{BASE_PATH}/setPACMatch/#{uuid}", body)
        end

        def set_pac_proxy(body = {}, uuid:)
          @client.post("#{BASE_PATH}/setPACProxy/#{uuid}", body)
        end

        def set_pac_rule(body = {}, uuid:)
          @client.post("#{BASE_PATH}/setPACRule/#{uuid}", body)
        end

        def set_remote_blacklist(body = {}, uuid:)
          @client.post("#{BASE_PATH}/setRemoteBlacklist/#{uuid}", body)
        end

        def toggle_pac_rule(body = {}, uuid:)
          @client.post("#{BASE_PATH}/togglePACRule/#{uuid}", body)
        end

        def toggle_remote_blacklist(body = {}, uuid:)
          @client.post("#{BASE_PATH}/toggleRemoteBlacklist/#{uuid}", body)
        end
      end
    end
  end
end
