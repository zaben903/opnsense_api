# frozen_string_literal: true

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
