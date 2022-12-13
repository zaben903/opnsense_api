# frozen_string_literal: true

require_relative 'opnsense_api/error'
require_relative 'opnsense_api/version'

module OPNsenseAPI
  autoload :Client, 'opnsense_api/client'

  autoload :Core, 'opnsense_api/core'
end
