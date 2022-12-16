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
    class Unbound
      # @see https://docs.opnsense.org/development/api/core/unbound.html#id3
      class Settings
        include OPNsenseAPI::Core

        BASE_PATH = '/diagnostics/settings'

        def add_domain_override(body = {})
          @client.post("#{BASE_PATH}/addDomainOverride", body)
        end

        def add_forward(body = {})
          @client.post("#{BASE_PATH}/addForward", body)
        end

        def add_host_alias(body = {})
          @client.post("#{BASE_PATH}/addHostAlias", body)
        end

        def add_host_override(body = {})
          @client.post("#{BASE_PATH}/addHostOverride", body)
        end

        def del_domain_override(body = {}, uuid:)
          @client.post("#{BASE_PATH}/delDomainOverride/#{uuid}", body)
        end

        def del_forward(body = {}, uuid:)
          @client.post("#{BASE_PATH}/delForward/#{uuid}", body)
        end

        def del_host_alias(body = {}, uuid:)
          @client.post("#{BASE_PATH}/delHostAlias/#{uuid}", body)
        end

        def del_host_override(body = {}, uuid:)
          @client.post("#{BASE_PATH}/delHostOverride/#{uuid}", body)
        end

        def get(params = {})
          @client.get("#{BASE_PATH}/get", params)
        end

        def get_domain_override(params = {}, uuid: nil)
          @client.get("#{BASE_PATH}/getDomainOverride/#{uuid}", params)
        end

        def get_forward(params = {}, uuid: nil)
          @client.get("#{BASE_PATH}/getForward/#{uuid}", params)
        end

        def get_host_alias(params = {}, uuid: nil)
          @client.get("#{BASE_PATH}/getHostAlias/#{uuid}", params)
        end

        def get_host_override(params = {}, uuid: nil)
          @client.get("#{BASE_PATH}/getHostOverride/#{uuid}", params)
        end

        def get_nameservers(params = {})
          @client.get("#{BASE_PATH}/getNameservers", params)
        end

        def search_domain_override(body = {})
          @client.post("#{BASE_PATH}/searchDomainOverride", body)
        end

        def search_forward(body = {})
          @client.post("#{BASE_PATH}/searchForward", body)
        end

        def search_host_alias(body = {})
          @client.post("#{BASE_PATH}/searchHostAlias", body)
        end

        def search_host_override(body = {})
          @client.post("#{BASE_PATH}/searchHostOverride", body)
        end

        def set(body = {})
          @client.post("#{BASE_PATH}/set", body)
        end

        def set_domain_override(body = {}, uuid:)
          @client.post("#{BASE_PATH}/setDomainOverride/#{uuid}", body)
        end

        def set_forward(body = {}, uuid:)
          @client.post("#{BASE_PATH}/setForward/#{uuid}", body)
        end

        def set_host_alias(body = {}, uuid:)
          @client.post("#{BASE_PATH}/setHostAlias/#{uuid}", body)
        end

        def set_host_override(body = {}, uuid:)
          @client.post("#{BASE_PATH}/setHostOverride/#{uuid}", body)
        end

        def toggle_domain_override(body = {}, uuid:, enabled: nil)
          @client.post("#{BASE_PATH}/toggleDomainOverride/#{uuid}/#{enabled}", body)
        end

        def toggle_forward(body = {}, uuid:, enabled: nil)
          @client.post("#{BASE_PATH}/toggleForward/#{uuid}/#{enabled}", body)
        end

        def toggle_host_alias(body = {}, uuid:, enabled: nil)
          @client.post("#{BASE_PATH}/toggleHostAlias/#{uuid}/#{enabled}", body)
        end

        def toggle_host_override(body = {}, uuid:, enabled: nil)
          @client.post("#{BASE_PATH}/toggleHostOverride/#{uuid}/#{enabled}", body)
        end
      end
    end
  end
end
