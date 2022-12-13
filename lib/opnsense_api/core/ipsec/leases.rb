# frozen_string_literal: true

module OPNsenseAPI
  module Core
    class IPSec
      # @see https://docs.opnsense.org/development/api/core/ipsec.html#id2
      class Leases
        include OPNsenseAPI::Core

        BASE_PATH = '/ipsec/key_pairs'

        def pools(params = {})
          @client.get("#{BASE_PATH}/pools", params)
        end

        def search(params = {})
          @client.get("#{BASE_PATH}/search", params)
        end
      end
    end
  end
end
