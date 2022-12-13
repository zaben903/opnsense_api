# frozen_string_literal: true

module OPNsenseAPI
  module Core
    class IPSec
      # @see https://docs.opnsense.org/development/api/core/ipsec.html#id3
      class LegacySubsystem
        include OPNsenseAPI::Core

        BASE_PATH = '/ipsec/legacy_subsystem'

        def apply_config(body = {})
          @client.post("#{BASE_PATH}/applyConfig", body)
        end

        def status(params = {})
          @client.get("#{BASE_PATH}/status", params)
        end
      end
    end
  end
end
