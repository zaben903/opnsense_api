# frozen_string_literal: true

module OPNsenseAPI
  module Core
    # @see https://docs.opnsense.org/development/api/core/firewall.html
    class Firewall
      autoload :Alias, 'opnsense_api/core/firewall/alias'
      autoload :AliasUtil, 'opnsense_api/core/firewall/alias_util'
      autoload :Category, 'opnsense_api/core/firewall/category'
      autoload :FilterUtil, 'opnsense_api/core/firewall/filter_util'

      include OPNsenseAPI::Core

      def alias
        Alias.new(@client)
      end

      def alias_util
        AliasUtil.new(@client)
      end

      def category
        Category.new(@client)
      end

      def filter_util
        FilterUtil.new(@client)
      end
    end
  end
end
