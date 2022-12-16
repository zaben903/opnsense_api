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
    class CaptivePortal
      class Service
        include OPNsenseAPI::Core

        BASE_PATH = '/captiveportal/service'

        def del_template(uuid:)
          @client.post("#{BASE_PATH}/delTemplate/#{uuid}")
        end

        def get_template(fileid: nil)
          @client.get("#{BASE_PATH}/getTemplate/#{fileid}")
        end

        def reconfigure(body = {})
          @client.post("#{BASE_PATH}/reconfigure", body)
        end

        def save_template(body = {})
          @client.post("#{BASE_PATH}/saveTemplate", body)
        end

        def search_templates(body = {})
          @client.post("#{BASE_PATH}/searchTemplates", body)
        end
      end
    end
  end
end
