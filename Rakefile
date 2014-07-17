require "bundler/gem_tasks"

require 'rspec/core'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList['spec/**/*_spec.rb']
end
task :default => :spec

require 'rubocop'
require 'rubocop/ridecharge'
require 'rubocop/rake_task'
Rubocop::RakeTask.new



task :console do
  require 'irb'
  require 'irb/completion'
  ARGV.clear
  IRB.start
end
