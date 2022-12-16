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
    class TrafficShaping
      # @see https://docs.opnsense.org/development/api/core/trafficshaper.html#id2
      class Settings
        include OPNsenseAPI::Core

        BASE_PATH = '/trafficshaper/settings'

        def add_pipe(body = {})
          @client.post("#{BASE_PATH}/addPipe", body)
        end

        def add_queue(body = {})
          @client.post("#{BASE_PATH}/addQueue", body)
        end

        def add_rule(body = {})
          @client.post("#{BASE_PATH}/addRule", body)
        end

        def del_pipe(body = {}, uuid:)
          @client.post("#{BASE_PATH}/delPipe/#{uuid}", body)
        end

        def del_queue(body = {}, uuid:)
          @client.post("#{BASE_PATH}/delQueue/#{uuid}", body)
        end

        def del_rule(body = {}, uuid:)
          @client.post("#{BASE_PATH}/delRule/#{uuid}", body)
        end

        def get(params = {})
          @client.get("#{BASE_PATH}/get", params)
        end

        def get_pipe(params = {}, uuid: nil)
          @client.get("#{BASE_PATH}/getPipe/#{uuid}", params)
        end

        def get_queue(params = {}, uuid: nil)
          @client.get("#{BASE_PATH}/getQueue/#{uuid}", params)
        end

        def get_rule(params = {}, uuid: nil)
          @client.get("#{BASE_PATH}/getRule/#{uuid}", params)
        end

        def search_pipes(body = {})
          @client.post("#{BASE_PATH}/searchPipes", body)
        end

        def search_queues(body = {})
          @client.post("#{BASE_PATH}/searchQueues", body)
        end

        def search_rules(body = {})
          @client.post("#{BASE_PATH}/searchRules", body)
        end

        def set(body = {})
          @client.post("#{BASE_PATH}/set", body)
        end

        def set_pipe(body = {}, uuid:)
          @client.post("#{BASE_PATH}/setPipe/#{uuid}", body)
        end

        def set_queue(body = {}, uuid:)
          @client.post("#{BASE_PATH}/setQueue/#{uuid}", body)
        end

        def set_rule(body = {}, uuid:)
          @client.post("#{BASE_PATH}/setRule/#{uuid}", body)
        end

        def toggle_pipe(body = {}, uuid:, enabled: nil)
          @client.post("#{BASE_PATH}/togglePipe/#{uuid}/#{enabled}", body)
        end

        def toggle_queue(body = {}, uuid:, enabled: nil)
          @client.post("#{BASE_PATH}/toggleQueue/#{uuid}/#{enabled}", body)
        end

        def toggle_rule(body = {}, uuid:, enabled: nil)
          @client.post("#{BASE_PATH}/toggleRule/#{uuid}/#{enabled}", body)
        end
      end
    end
  end
end
