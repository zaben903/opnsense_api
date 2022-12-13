# frozen_string_literal: true

module OPNsenseAPI
  module Core
    class IDS
      # @see https://docs.opnsense.org/development/api/core/ids.html#id1
      class Service
        include OPNsenseAPI::Core

        BASE_PATH = '/ids/service'

        def drop_alert_log(body = {})
          @client.post("#{BASE_PATH}/dropAlertLog", body)
        end

        def get_alert_info(alertid:, fileid: nil)
          @client.get("#{BASE_PATH}/getAlertInfo/#{alertid}/#{fileid}")
        end

        def get_alert_logs(params = {})
          @client.get("#{BASE_PATH}/getAlertLogs", params)
        end

        def query_alerts(body = {})
          @client.post("#{BASE_PATH}/queryAlerts", body)
        end

        def reconfigure(body = {})
          @client.post("#{BASE_PATH}/reconfigure", body)
        end

        def reload_rules(body = {})
          @client.post("#{BASE_PATH}/reloadRules", body)
        end

        def restart(body = {})
          @client.post("#{BASE_PATH}/restart", body)
        end

        def start(body = {})
          @client.post("#{BASE_PATH}/start", body)
        end

        def status(params = {})
          @client.get("#{BASE_PATH}/status", params)
        end

        def stop(body = {})
          @client.post("#{BASE_PATH}/stop", body)
        end

        def update_rules(body = {}, wait: nil)
          @client.post("#{BASE_PATH}/updateRules/#{wait}", body)
        end
      end
    end
  end
end
