# frozen_string_literal: true

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
