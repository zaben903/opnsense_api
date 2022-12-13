# frozen_string_literal: true

module OPNsenseAPI
  module Core
    class Interfaces
      # @see https://docs.opnsense.org/development/api/core/interfaces.html#id3
      class VLANSettings < Base
        BASE_PATH = '/interfaces/vlan_settings'
      end
    end
  end
end
