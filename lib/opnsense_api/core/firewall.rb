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
