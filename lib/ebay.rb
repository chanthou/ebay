$:.unshift(File.dirname(__FILE__)) unless $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

begin
  require 'happymapper'
rescue LoadError
  require 'rubygems'
  require 'happymapper'
end

begin
  require 'money'
rescue LoadError
  require 'rubygems'
  require 'money'
end

# Include the extra string and hash extensions particular to ebay
require 'support/cattr_accessor'

# Include the additional xml mapping -> happymapper translator
require 'support/time_node'
require 'support/xml_mapping_translation'

# Include the main program file
require 'ebay/ebay'