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
      class PacketCapture
        include OPNsenseAPI::Core

        BASE_PATH = '/diagnostics/packet_capture'

        def download(jobid:)
          @client.get("#{BASE_PATH}/download/#{jobid}")
        end

        def get(params = {})
          @client.get("#{BASE_PATH}/get", params)
        end

        def mac_info(macaddr:)
          @client.get("#{BASE_PATH}/mac_info/#{macaddr}")
        end

        def remove(jobid:)
          @client.post("#{BASE_PATH}/remove/#{jobid}")
        end

        def search_jobs(params = {})
          @client.get("#{BASE_PATH}/searchJobs", params)
        end

        def set(params: {}, body: {})
          if body.any?
            @client.post("#{BASE_PATH}/set", body)
          else
            @client.get("#{BASE_PATH}/set", params)
          end
        end

        def start(jobid:)
          @client.post("#{BASE_PATH}/start/#{jobid}")
        end

        def stop(jobid:)
          @client.post("#{BASE_PATH}/stop/#{jobid}")
        end

        def view(jobid:, detail: 'normal')
          @client.get("#{BASE_PATH}/view/#{jobid}/#{detail}")
        end
      end
    end
  end
end
