
module Ebay # :nodoc:
  module Types # :nodoc:
    # == Attributes
    #  numeric_node :total_quantity, 'TotalQuantity', :optional => true
    #  money_node :total_value, 'TotalValue', :optional => true
    class ItemTotals
      include XMLMappingTranslation
      include Initializer
      root_element_name 'ItemTotals'
      numeric_node :total_quantity, 'TotalQuantity', :optional => true
      money_node :total_value, 'TotalValue', :optional => true
    end
  end
end


