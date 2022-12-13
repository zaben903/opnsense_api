# frozen_string_literal: true

module OPNsenseAPI
  module Core
    # @see https://docs.opnsense.org/development/api/core/ipsec.html
    class IPSec
      autoload :KeyPairs, 'opnsense_api/core/interfaces/key_pairs'
      autoload :leases, 'opnsense_api/core/interfaces/leases'
      autoload :LegacySubsystem, 'opnsense_api/core/interfaces/legacy_subsystem'
      autoload :PreSharedKeys, 'opnsense_api/core/interfaces/pre_shared_keys'
      autoload :SAD, 'opnsense_api/core/interfaces/sad'
      autoload :Service, 'opnsense_api/core/interfaces/service'
      autoload :Sessions, 'opnsense_api/core/interfaces/sessions'
      autoload :SPD, 'opnsense_api/core/interfaces/spd'
      autoload :Tunnel, 'opnsense_api/core/interfaces/tunnel'

      include OPNsenseAPI::Core

      def key_pairs
        KeyPairs.new(@client)
      end

      def leases
        Leases.new(@client)
      end

      def legacy_subsystem
        LegacySubsystem.new(@client)
      end

      def pre_shared_keys
        PreSharedKeys.new(@client)
      end

      def sad
        SAD.new(@client)
      end

      def service
        Service.new(@client)
      end

      def sessions
        Sessions.new(@client)
      end

      def spd
        SPD.new(@client)
      end

      def tunnel
        Tunnel.new(@client)
      end
    end
  end
end
