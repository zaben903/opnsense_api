# frozen_string_literal: true

module OPNsenseAPI
  module Core
    class Diagnostics
      class Activity
        include OPNsenseAPI::Core

        BASE_PATH = '/diagnostics/activity'

        def get_activity
          @client.get("#{BASE_PATH}/getActivity")
        end
      end
    end
  end
end
