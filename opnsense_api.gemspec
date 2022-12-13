# frozen_string_literal: true

require_relative 'lib/opnsense_api/version'

Gem::Specification.new do |spec|
  spec.name = 'opnsense_api'
  spec.version = OPNsenseAPI::VERSION
  spec.authors = ['Zach Bensley']
  spec.email = ['zach@bensley.id.au']

  spec.summary = 'Library for using the OPNsense API'
  spec.homepage = 'https://github.com/zaben903/opnsense_api'
  spec.license = 'LGPL-3.0-or-later'
  spec.required_ruby_version = '>= 2.7.0'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['changelog_uri'] = "#{spec.homepage}/blob/master/CHANGELOG.md"

  spec.files = Dir['lib/**/*.rb']
  spec.files += Dir['sig/**/*.rbs']
  spec.require_paths = ['lib']

  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 1.21'
end
