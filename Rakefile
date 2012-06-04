$:.unshift File.join(File.dirname(__FILE__), 'lib')
require 'rubygems'
require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'
require 'rake/gempackagetask'
require 'rake/contrib/rubyforgepublisher'
require 'xml'

response_dir = File.join(File.dirname(__FILE__), 'test', 'fixtures', 'responses')

desc "Default: Run all the unit tests"
task :default => [ 'test:units' ]

namespace :test do
  desc 'Run all unit tests.'
  Rake::TestTask.new(:units) do |t|
    t.libs << "test"
    t.pattern = 'test/unit/**/*_test.rb'
    t.verbose = true
  end
end

desc "Delete tar.gz / zip / rdoc"
task :cleanup => [ :clobber_package, :clobber_rdoc ]

Rake::RDocTask.new { |rdoc|
  rdoc.rdoc_dir = 'doc'
  rdoc.title    = "eBayAPI Ruby client for the eBay unified schema XML API"
  rdoc.options << '--line-numbers' << '--inline-source' << '--main=README'
  rdoc.rdoc_files.include('README', 'CHANGELOG')
  rdoc.rdoc_files.include('lib/**/*.rb')
  rdoc.rdoc_files.exclude('lib/ebay/schema')
  rdoc.rdoc_files.exclude('lib/support')
}

desc "Release the gems and docs to RubyForge"
task :release => [ :publish, :upload ]

desc "Publish the release files to RubyForge."
task :publish => [ :package ] do
  require 'rubyforge'
  
  packages = %w( gem tgz zip ).collect{ |ext| "pkg/#{Ebay::PKG_NAME}-#{Ebay::VERSION}.#{ext}" }
  
  rubyforge = RubyForge.new
  rubyforge.login
  rubyforge.add_release(Ebay::PKG_NAME, Ebay::PKG_NAME, "REL #{Ebay::VERSION}", *packages)
end

desc 'Upload RDoc to RubyForge'
task :upload => :rdoc do
  user = "cfauser@rubyforge.org" 
  project = '/var/www/gforge-projects/ebayapi'
  local_dir = 'doc'
  pub = Rake::SshDirPublisher.new user, project, local_dir
  pub.upload
end
