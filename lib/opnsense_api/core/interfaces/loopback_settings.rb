# frozen_string_literal: true

module OPNsenseAPI
  module Core
    class Interfaces
      # @see https://docs.opnsense.org/development/api/core/interfaces.html#id1
      class LoopbackSettings < Base
        BASE_PATH = '/interfaces/loopback_settings'
      end
    end
  end
end
