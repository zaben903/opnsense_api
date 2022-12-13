# frozen_string_literal: true

module OPNsenseAPI
  module Core
    class Core
      class Menu
        include OPNsenseAPI::Core

        BASE_PATH = '/core/menu'

        def search
          @client.get(BASE_PATH)
        end

        def tree
          @client.get("#{BASE_PATH}/tree")
        end
      end
    end
  end
end
