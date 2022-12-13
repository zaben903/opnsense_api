# frozen_string_literal: true

module OPNsenseAPI
  module Core
    class Cron
      class Settings
        include OPNsenseAPI::Core

        BASE_PATH = '/cron/settings'

        def add_job(body)
          @client.post("#{BASE_PATH}/addJob", body)
        end

        def del_job(uuid:)
          @client.post("#{BASE_PATH}/delJob/#{uuid}")
        end

        def get
          @client.get("#{BASE_PATH}/get")
        end

        def get_job(uuid: nil)
          @client.get("#{BASE_PATH}/getJob/#{uuid}")
        end

        def search_jobs(body)
          @client.post("#{BASE_PATH}/searchJobs", body)
        end

        def set(body)
          @client.post("#{BASE_PATH}/set", body)
        end

        def set_job(uuid:, body: {})
          @client.post("#{BASE_PATH}/setJob/#{uuid}", body)
        end

        def toggle_job(uuid:, enabled: nil)
          @client.post("#{BASE_PATH}/toggleJob/#{uuid}/#{enabled}")
        end
      end
    end
  end
end
