# frozen_string_literal: true

module OPNsenseAPI
  module Core
    class Monit
      # @see https://docs.opnsense.org/development/api/core/monit.html#id3
      class Status
        include OPNsenseAPI::Core

        BASE_PATH = '/monit/status'

        def get(params = {})
          @client.get("#{BASE_PATH}/get", params)
        end
      end
    end
  end
end
