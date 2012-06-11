
module Ebay # :nodoc:
  module Types # :nodoc:
    # == Attributes
    #  numeric_node :quantity, '', :optional => true
    class Quantity
      include XMLMappingTranslation
      include Initializer
      root_element_name 'Quantity'
      numeric_node :quantity, '', :optional => true
    end
  end
end


