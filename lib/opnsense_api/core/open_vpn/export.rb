# frozen_string_literal: true

module OPNsenseAPI
  module Core
    class OpenVPN
      # @see https://docs.opnsense.org/development/api/core/openvpn.html#id1
      class Export
        include OPNsenseAPI::Core

        BASE_PATH = '/openvpn/export'

        def accounts(params = {}, vpnid: nil)
          @client.get("#{BASE_PATH}/accounts/#{vpnid}", params)
        end

        def download(body = {}, vpnid:, certref: nil)
          @client.post("#{BASE_PATH}/download/#{vpnid}/#{certref}", body)
        end

        def providers(params = {})
          @client.get("#{BASE_PATH}/providers", params)
        end

        def store_presets(body = {}, vpnid:)
          @client.post("#{BASE_PATH}/storePresets/#{vpnid}", body)
        end

        def templates(params = {})
          @client.get("#{BASE_PATH}/templates", params)
        end

        def validate_presets(body = {}, vpnid:)
          @client.post("#{BASE_PATH}/validatePresets/#{vpnid}", body)
        end
      end
    end
  end
end
