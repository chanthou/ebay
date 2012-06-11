require File.dirname(__FILE__) + '/../test_helper'

class Widget
  include XMLMappingTranslation
  
  money_node :amount, 'Amount'
end

class Gizmo
  include XMLMappingTranslation

  money_node :amount, 'Amount'
end

class MoneyNodeTest < Test::Unit::TestCase
  
  def setup
    @xml = <<-END
<widget>
  <Amount currencyID="CAD">10.00</Amount>
</widget>
  END

  end

  def test_load_from_xml
    item = Widget.parse(@xml)
    assert_instance_of Money, item.amount
    assert_equal 1000, item.amount.cents
    assert_equal 'CAD', item.amount.currency
  end
  
  def test_to_xml
    item = Widget.new
    item.amount = Money.new(100, 'CAD')
    
    item_xml = Nokogiri::XML::Document.parse(item.to_xml).root
    assert_equal '1.00', item_xml.elements[0].text
    assert_equal 'CAD', item_xml.elements[0].attributes['currencyID'].text
  end
  
  # Detect bug in Money library v 2.0.0
  def test_to_xml_without_default
    item = Gizmo.new
    item.amount = Money.new(100, 'CAD')
    
    item_xml = Nokogiri::XML::Document.parse(item.to_xml).root
    assert_equal '1.00', item_xml.elements[0].text
    assert_equal 'CAD', item_xml.elements[0].attributes['currencyID'].text
  end
end

