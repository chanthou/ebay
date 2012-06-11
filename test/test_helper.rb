$:.unshift File.dirname(__FILE__)
$:.unshift File.join(File.dirname(__FILE__), "..", "lib")

require 'rubygems'
require 'bundler/setup'
require 'test/unit'
require 'ebay'
require 'http_mock'
require 'credentials'
require 'active_support'

require 'test/unit/xml'


class Test::Unit::TestCase #:nodoc:
  FIXTURES_DIR = File.dirname(__FILE__) + '/fixtures'
  
  # Append the xml version header if it doesn't already exist on the xml
  # string.
  def assert_xml_equal_with_xml_version(expected_doc, actual_doc, message = nil)
    xml_version_str = "<?xml version=\"1.0\"?>"
    if !expected_doc.include?(xml_version_str)
      expected_doc = xml_version_str + expected_doc
    end
    if !actual_doc.include?(xml_version_str)
      actual_doc = xml_version_str + actual_doc
    end
    
    assert_xml_equal_without_xml_version(expected_doc, actual_doc, message)
  end
  alias :assert_xml_equal_without_xml_version :assert_xml_equal
  alias :assert_xml_equal :assert_xml_equal_with_xml_version

  protected
  def responses(name, code = 200)
    Ebay::Response.new(load_response(name), code)
  end

  def load_response(name)
    File.read(response_file_path(name))
  end

  def response_file_path(name)
    FIXTURES_DIR + "/responses/#{name}.xml"
  end
end

