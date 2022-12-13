# frozen_string_literal: true

module OPNsenseAPI
  module Core
    class IPSec
      # @see https://docs.opnsense.org/development/api/core/ipsec.html#id5
      class SAD
        include OPNsenseAPI::Core

        BASE_PATH = '/ipsec/sad'

        def delete(body = {}, id:)
          @client.post("#{BASE_PATH}/delete/#{id}", body)
        end

        def search(params = {})
          @client.get(BASE_PATH, params)
        end
      end
    end
  end
end
