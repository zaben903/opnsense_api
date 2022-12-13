# frozen_string_literal: true

module OPNsenseAPI
  module Core
    class Interfaces
      # @see https://docs.opnsense.org/development/api/core/interfaces.html#id2
      class VIPSettings < Base
        BASE_PATH = '/interfaces/vip_settings'

        def get_unused_vhid(params = {})
          @client.get("#{BASE_PATH}/getUnusedVhid", params)
        end
      end
    end
  end
end
