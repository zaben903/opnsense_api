# frozen_string_literal: true

module OPNsenseAPI
  module Core
    class Interfaces
      # @see https://docs.opnsense.org/development/api/core/interfaces.html#id4
      class VXLANSettings < Base
        BASE_PATH = '/interfaces/vxlan_settings'
      end
    end
  end
end
