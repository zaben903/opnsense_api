# frozen_string_literal: true

module OPNsenseAPI
  module Core
    class Firewall
      # @see https://docs.opnsense.org/development/api/core/firewall.html#id4
      class FilterUtil
        include OPNsenseAPI::Core

        BASE_PATH = '/firewall/filter_util'

        def rule_stats(params = {})
          @client.get("#{BASE_PATH}/ruleStats", params)
        end
      end
    end
  end
end
