# frozen_string_literal: true

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
