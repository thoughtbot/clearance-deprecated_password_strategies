require "bundler/gem_tasks"
require 'rspec/core/rake_task'

desc 'Default'
task :default => [:spec]

RSpec::Core::RakeTask.new(:spec) do |t|
  t.verbose = false
end
