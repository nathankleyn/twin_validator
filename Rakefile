require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "twin_validator"
    gem.summary = "A simple twin field validator for Rails 3."
    gem.description = "A simple twin field validator for Rails 3."
    gem.email = "nathan@unfinitydesign.com"
    gem.homepage = "http://github.com/nathankleyn/twin_validator"
    gem.authors = ["Nathan Kleyn"]

    gem.add_dependency 'activemodel', '>= 3.0.0.beta4'
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end


# Rake RSpec2 task stuff
gem 'rspec', '>= 2.0.0.beta.12'
gem 'rspec-expectations'

require 'rspec/core/rake_task'

desc "Run the specs under spec"
RSpec::Core::RakeTask.new do |t|

end

task :default => :spec

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  if File.exist?('VERSION')
    version = File.read('VERSION')
  else
    version = ""
  end


  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "twin_validator #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
