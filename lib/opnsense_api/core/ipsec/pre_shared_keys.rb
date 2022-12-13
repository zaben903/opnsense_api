# frozen_string_literal: true

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
