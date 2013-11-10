require 'rake/extensiontask'
require "bundler/gem_tasks"

spec = Gem::Specification.load('termbox.gemspec')


Rake::ExtensionTask.new('termbox', spec) do |ext|
  ext.lib_dir = 'lib/termbox/'
  ext.name = 'termbox'
end

Gem::PackageTask.new(spec) do |pkg|
end
