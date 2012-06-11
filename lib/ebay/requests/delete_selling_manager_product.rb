
module Ebay # :nodoc:
  module Requests # :nodoc:
    # == Attributes
    #  numeric_node :product_id, 'ProductID', :optional => true
    class DeleteSellingManagerProduct < Abstract
      include XMLMappingTranslation
      include Initializer
      root_element_name 'DeleteSellingManagerProductRequest'
      numeric_node :product_id, 'ProductID', :optional => true
    end
  end
end


