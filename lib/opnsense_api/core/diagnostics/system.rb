# frozen_string_literal: true

module OPNsenseAPI
  module Core
    class Diagnostics
      class System
        include OPNsenseAPI::Core

        BASE_PATH = '/diagnostics/system'

        def memory(params = {})
          @client.get("#{BASE_PATH}/memory", params)
        end
      end
    end
  end
end
