# frozen_string_literal: true

module OPNsenseAPI
  module Core
    class IDS
      # @see https://docs.opnsense.org/development/api/core/ids.html#id2
      class Settings
        include OPNsenseAPI::Core

        BASE_PATH = '/ids/settings'

        def add_policy(body = {})
          @client.post("#{BASE_PATH}/addPolicy", body)
        end

        def add_policy_rule(body = {})
          @client.post("#{BASE_PATH}/addPolicyRule", body)
        end

        def add_user_rule(body = {})
          @client.post("#{BASE_PATH}/addUserRule", body)
        end

        def check_policy_rule(params = {})
          @client.get("#{BASE_PATH}/checkPolicyRule", params)
        end

        def del_policy(uuid:)
          @client.post("#{BASE_PATH}/delPolicy/#{uuid}")
        end

        def del_policy_rule(uuid:)
          @client.post("#{BASE_PATH}/delPolicyRule/#{uuid}")
        end

        def del_user_rule(uuid:)
          @client.post("#{BASE_PATH}/delUserRule/#{uuid}")
        end

        def get(params = {})
          @client.get("#{BASE_PATH}/get", params)
        end

        def get_policy(uuid: nil)
          @client.get("#{BASE_PATH}/getPolicy/#{uuid}")
        end

        def get_policy_rule(uuid: nil)
          @client.get("#{BASE_PATH}/getPolicyRule/#{uuid}")
        end

        def get_rule_info(sid: nil)
          @client.get("#{BASE_PATH}/getRuleInfo/#{sid}")
        end

        def get_ruleset(id:)
          @client.get("#{BASE_PATH}/getRuleset/#{id}")
        end

        def get_ruleset_properties(params = {})
          @client.get("#{BASE_PATH}/getRulesetProperties", params)
        end

        def get_user_rule(uuid: nil)
          @client.get("#{BASE_PATH}/getUserRule/#{uuid}")
        end

        def list_rule_metadata(params = {})
          @client.get("#{BASE_PATH}/listRuleMetadata", params)
        end

        def list_rulesets(params = {})
          @client.get("#{BASE_PATH}/listRulesets", params)
        end

        def search_installed_rules(body = {})
          @client.post("#{BASE_PATH}/searchInstalledRules", body)
        end

        def search_policy(body = {})
          @client.post("#{BASE_PATH}/searchPolicy", body)
        end

        def search_policy_rule(body = {})
          @client.post("#{BASE_PATH}/searchPolicyRule", body)
        end

        def search_user_rule(body = {})
          @client.post("#{BASE_PATH}/searchUserRule", body)
        end

        def set(body = {})
          @client.post("#{BASE_PATH}/set", body)
        end

        def set_policy(body = {}, uuid:)
          @client.post("#{BASE_PATH}/setPolicy/#{uuid}", body)
        end

        def set_policy_rule(body = {}, uuid:)
          @client.post("#{BASE_PATH}/setPolicyRule/#{uuid}", body)
        end

        def set_rule(body = {}, sid:)
          @client.post("#{BASE_PATH}/setRule/#{sid}", body)
        end

        def set_ruleset(body = {}, filename:)
          @client.post("#{BASE_PATH}/setRuleset/#{filename}", body)
        end

        def set_ruleset_properties(body = {})
          @client.post("#{BASE_PATH}/setRulesetProperties", body)
        end

        def set_user_rule(body = {}, uuid:)
          @client.post("#{BASE_PATH}/setUserRule/#{uuid}", body)
        end

        def toggle_policy(uuid:, enabled: nil)
          @client.post("#{BASE_PATH}/togglePolicy/#{uuid}/#{enabled}")
        end

        def toggle_policy_rule(uuid:, enabled: nil)
          @client.post("#{BASE_PATH}/togglePolicyRule/#{uuid}/#{enabled}")
        end

        def toggle_rule(sid:, enabled: nil)
          @client.post("#{BASE_PATH}/toggleRule/#{sid}/#{enabled}")
        end

        def toggle_ruleset(id:, enabled: nil)
          @client.post("#{BASE_PATH}/toggleRuleset/#{id}/#{enabled}")
        end

        def toggle_user_rule(uuid:, enabled: nil)
          @client.post("#{BASE_PATH}/toggleUserRule/#{uuid}/#{enabled}")
        end
      end
    end
  end
end
