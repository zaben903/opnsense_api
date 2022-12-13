# frozen_string_literal: true

module OPNsenseAPI
  module Core
    class Diagnostics
      class DNS
        include OPNsenseAPI::Core

        BASE_PATH = '/diagnostics/dns'

        def reverse_lookup(params = {})
          @client.get("#{BASE_PATH}/reverseLookup", params)
        end
      end
    end
  end
end
