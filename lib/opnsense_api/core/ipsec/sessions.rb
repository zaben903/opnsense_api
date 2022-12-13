# frozen_string_literal: true

module OPNsenseAPI
  module Core
    class IPSec
      # @see https://docs.opnsense.org/development/api/core/ipsec.html#id7
      class Sessions
        include OPNsenseAPI::Core

        BASE_PATH = '/ipsec/sessions'

        def connect(body = {}, id:)
          @client.post("#{BASE_PATH}/connect/#{id}", body)
        end

        def disconnect(body = {}, id:)
          @client.post("#{BASE_PATH}/disconnect/#{id}", body)
        end

        def search_phase_1(params = {})
          @client.get("#{BASE_PATH}/searchPhase1", params)
        end

        def search_phase_2(params = {})
          @client.get("#{BASE_PATH}/searchPhase2", params)
        end
      end
    end
  end
end
