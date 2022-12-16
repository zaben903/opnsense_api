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
    class CaptivePortal
      class Voucher
        include OPNsenseAPI::Core

        BASE_PATH = '/captiveportal/voucher'

        def drop_expired_vouchers(provider:, group:, body: {})
          @client.post("#{BASE_PATH}/dropExpiredVouchers/#{provider}/#{group}", body)
        end

        def drop_voucher_group(provider:, group:, body: {})
          @client.post("#{BASE_PATH}/dropVoucherGroup/#{provider}/#{group}", body)
        end

        def expire_voucher(provider:, body: {})
          @client.post("#{BASE_PATH}/expireVoucher/#{provider}", body)
        end

        def generate_vouchers(provider:, body: {})
          @client.post("#{BASE_PATH}/generateVouchers/#{provider}", body)
        end

        def list_providers
          @client.get("#{BASE_PATH}/listProviders")
        end

        def list_voucher_groups(provider:)
          @client.get("#{BASE_PATH}/listVoucherGroups/#{provider}")
        end

        def list_vouchers(provider:, group:)
          @client.get("#{BASE_PATH}/listVouchers/#{provider}/#{group}")
        end
      end
    end
  end
end
