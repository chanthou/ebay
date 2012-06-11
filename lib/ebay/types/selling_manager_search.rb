
module Ebay # :nodoc:
  module Types # :nodoc:
    # == Attributes
    #  text_node :search_type, 'SearchType', :optional => true
    #  text_node :search_value, 'SearchValue', :optional => true
    class SellingManagerSearch
      include XMLMappingTranslation
      include Initializer
      root_element_name 'SellingManagerSearch'
      text_node :search_type, 'SearchType', :optional => true
      text_node :search_value, 'SearchValue', :optional => true
    end
  end
end


