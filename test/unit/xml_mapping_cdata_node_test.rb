require File.dirname(__FILE__) + '/../test_helper'

require 'ruby-debug'

class Widget
  include XMLMappingTranslation
  cdata_node :description, 'description'
end

class CdataNodeTest < Test::Unit::TestCase
  
  def setup
    @xml = <<-END
<widget>
  <description>Blah blah blah</description>
</widget>
  END

  end

  def test_load_from_xml
    item = Widget.parse(@xml)
    assert_instance_of String, item.description
    assert_equal 'Blah blah blah', item.description
  end 

  def test_save_to_xml
    widget = Widget.new
    widget.description = '<name>Cody Fauser</name>'
    assert_xml_equal '<widget><description>&lt;name&gt;Cody Fauser&lt;/name&gt;</description></widget>', widget.to_xml
  end
end

