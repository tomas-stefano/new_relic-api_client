# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'new_relic/rest_api/version'

Gem::Specification.new do |spec|
  spec.name          = "new_relic-rest_api"
  spec.version       = NewRelic::RestApi::VERSION
  spec.authors       = ["Tomas D'Stefano"]
  spec.email         = ["tomas_stefano@successoft.com"]

  spec.summary       = %q{
    New Relic client v2 Rest API.
  }
  spec.description   = %q{
    New Relic client v2 Rest API: https://docs.newrelic.com/docs/apis/rest-api-v2.
  }
  spec.homepage      = 'https://github.com/tomas-stefano/new_relic-api_client'
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'faraday', '~> 0.12'
  spec.add_dependency 'faraday_middleware', '~> 0.11'
  spec.add_dependency 'faraday-conductivity', '~> 0.3'
  spec.add_dependency 'activesupport', '>= 4'
  spec.add_dependency 'virtus', '~> 1.0'

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency 'dotenv'
end
