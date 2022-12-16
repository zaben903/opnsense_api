# frozen_string_literal: true

# Copyright (C) 2022  Zach Bensley
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Lesser General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

module OPNsenseAPI
  module Core
    class Diagnostics
      class Firewall
        include OPNsenseAPI::Core

        BASE_PATH = '/diagnostics/firewall'

        def del_state(stateid:, creatorid:)
          @client.post("#{BASE_PATH}/delState/#{stateid}/#{creatorid}")
        end

        def flush_sources(body = {})
          @client.post("#{BASE_PATH}/flushSources", body)
        end

        def flush_states(body = {})
          @client.post("#{BASE_PATH}/flushStates", body)
        end

        def kill_states(body = {})
          @client.post("#{BASE_PATH}/killStates", body)
        end

        def list_rule_ids(params = {})
          @client.post("#{BASE_PATH}/listRuleIds", params)
        end

        def log(params = {})
          @client.get("#{BASE_PATH}/log", params)
        end

        def log_filters(params = {})
          @client.get("#{BASE_PATH}/logFilters", params)
        end

        def pf_statistics(section: nil)
          @client.get("#{BASE_PATH}/pfStatistics/#{section}")
        end

        def query_pf_top(body = {})
          @client.post("#{BASE_PATH}/queryPfTop", body)
        end

        def query_states(body = {})
          @client.post("#{BASE_PATH}/queryStates", body)
        end

        def stats(params = {})
          @client.get("#{BASE_PATH}/stats", params)
        end
      end
    end
  end
end
