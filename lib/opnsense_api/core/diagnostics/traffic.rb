# frozen_string_literal: true

module OPNsenseAPI
  module Core
    class Diagnostics
      class Traffic
        include OPNsenseAPI::Core

        BASE_PATH = '/diagnostics/traffic'

        def interface(params = {})
          @client.get("#{BASE_PATH}/Interface", params)
        end

        def top(params = {})
          @client.get("#{BASE_PATH}/Top", params)
        end
      end
    end
  end
end
