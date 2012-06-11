
module Ebay # :nodoc:
  module Responses # :nodoc:
    # == Attributes
    #  text_node :attribute_system_version, 'AttributeSystemVersion', :optional => true
    #  text_node :attribute_data, 'AttributeData', :optional => true
    class GetAttributesCS < Abstract
      include XMLMappingTranslation
      include Initializer
      root_element_name 'GetAttributesCSResponse'
      text_node :attribute_system_version, 'AttributeSystemVersion', :optional => true
      text_node :attribute_data, 'AttributeData', :optional => true
    end
  end
end


