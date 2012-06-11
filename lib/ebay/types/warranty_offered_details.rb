
module Ebay # :nodoc:
  module Types # :nodoc:
    # == Attributes
    #  text_node :warranty_offered_option, 'WarrantyOfferedOption', :optional => true
    #  text_node :description, 'Description', :optional => true
    class WarrantyOfferedDetails
      include XMLMappingTranslation
      include Initializer
      root_element_name 'WarrantyOfferedDetails'
      text_node :warranty_offered_option, 'WarrantyOfferedOption', :optional => true
      text_node :description, 'Description', :optional => true
    end
  end
end


