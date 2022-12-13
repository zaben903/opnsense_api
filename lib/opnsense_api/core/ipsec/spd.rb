# frozen_string_literal: true

module OPNsenseAPI
  module Core
    class IPSec
      # @see https://docs.opnsense.org/development/api/core/ipsec.html#id8
      class SPD
        include OPNsenseAPI::Core

        BASE_PATH = '/ipsec/spd'

        def delete(body = {}, id:)
          @client.post("#{BASE_PATH}/delete/#{id}", body)
        end

        def search(params = {})
          @client.get("#{BASE_PATH}/search", params)
        end
      end
    end
  end
end
