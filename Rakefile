require "bundler/gem_tasks"
require "rspec/core/rake_task"
require 'dotenv'
Dotenv.load
require 'new_relic/rest_api'

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

desc 'Runs an IRB session'
task :console do
  NewRelic::RestApi.config do |config|
    config.key = ENV['NEW_RELIC_REST_API_KEY']
    config.ssl_options = { verify: false }
  end

  ARGV.clear
  require 'irb'
  IRB.start
end
