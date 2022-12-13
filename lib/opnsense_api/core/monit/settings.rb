# frozen_string_literal: true

module OPNsenseAPI
  module Core
    class Monit
      # @see https://docs.opnsense.org/development/api/core/monit.html#id2
      class Settings
        include OPNsenseAPI::Core

        BASE_PATH = '/monit/settings'

        def add_alert(body = {})
          @client.post("#{BASE_PATH}/addAlert", body)
        end

        def add_service(body = {})
          @client.post("#{BASE_PATH}/addService", body)
        end

        def add_test(body = {})
          @client.post("#{BASE_PATH}/addTest", body)
        end

        def del_alert(body = {}, uuid:)
          @client.post("#{BASE_PATH}/delAlert/#{uuid}", body)
        end

        def del_service(body = {}, uuid:)
          @client.post("#{BASE_PATH}/delService/#{uuid}", body)
        end

        def del_test(body = {}, uuid:)
          @client.post("#{BASE_PATH}/delTest/#{uuid}", body)
        end

        def dirty(params = {})
          @client.get("#{BASE_PATH}/dirty", params)
        end

        def get(params = {})
          @client.get("#{BASE_PATH}/get", params)
        end

        def get_alert(params = {}, uuid: nil)
          @client.get("#{BASE_PATH}/getAlert/#{uuid}", params)
        end

        def get_general(params = {})
          @client.get("#{BASE_PATH}/getGeneral", params)
        end

        def get_service(params = {}, uuid: nil)
          @client.get("#{BASE_PATH}/getService/#{uuid}", params)
        end

        def get_test(params = {}, uuid: nil)
          @client.get("#{BASE_PATH}/getTest/#{uuid}", params)
        end

        def search_alert(body = {})
          @client.post("#{BASE_PATH}/searchAlert", body)
        end

        def search_service(body = {})
          @client.post("#{BASE_PATH}/searchService", body)
        end

        def search_test(body = {})
          @client.post("#{BASE_PATH}/searchTest", body)
        end

        def set(body = {})
          @client.post("#{BASE_PATH}/set", body)
        end

        def set_alert(body = {}, uuid:)
          @client.post("#{BASE_PATH}/setAlert/#{uuid}", body)
        end

        def set_service(body = {}, uuid:)
          @client.post("#{BASE_PATH}/setService/#{uuid}", body)
        end

        def set_test(body = {}, uuid:)
          @client.post("#{BASE_PATH}/setTest/#{uuid}", body)
        end

        def toggle_alert(body = {}, uuid:, enabled: nil)
          @client.post("#{BASE_PATH}/toggleAlert/#{uuid}/#{enabled}", body)
        end

        def toggle_service(body = {}, uuid:, enabled: nil)
          @client.post("#{BASE_PATH}/toggleService/#{uuid}/#{enabled}", body)
        end
      end
    end
  end
end
