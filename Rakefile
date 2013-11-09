require "bundler/gem_tasks"
require 'rake/extensiontask'

spec = Gem::Specification.load('termbox.gemspec')

Gem::PackageTask.new(spec) do |pkg|
end

Rake::ExtensionTask.new('termbox', spec)
