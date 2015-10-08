lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vaquero_io_awschef/version'
Gem::Specification.new do |gem|
  gem.name          = VaqueroIo::ProviderPluginExtensions::PLUGIN_NAME
  gem.version       = VaqueroIo::ProviderPluginExtensions::VERSION
  gem.authors       = ['Nic Cheneweth']
  gem.email         = ['Nic.Cheneweth@thoughtworks.com']
  gem.summary       = 'AWS/Chef provider plugin for vaquero_io'
  gem.description   = 'Provider plugin gem to support provisioning and configuring \
                       servers on the aws ec2 IaaS platform'
  gem.license       = 'Apache 2.0'
  gem.homepage      = 'http://vaquero.io/'

  gem.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  gem.test_files    = gem.files.grep(%r{/^\/(test|spec|features)/})
  gem.require_paths = ['lib']
  gem.required_ruby_version = '>= 2.0.0'

  gem.add_development_dependency 'bundler',         '~> 1.7'
  gem.add_development_dependency 'rake',            '~> 10.0'
  gem.add_development_dependency 'rubocop',         '~> 0.30'
  gem.add_development_dependency 'rspec',           '~> 3.0'
end
