
module Ebay # :nodoc:
  module Responses # :nodoc:
    # == Attributes
    #  text_node :status, 'Status', :optional => true
    class GetStoreCategoryUpdateStatus < Abstract
      include XMLMappingTranslation
      include Initializer
      root_element_name 'GetStoreCategoryUpdateStatusResponse'
      text_node :status, 'Status', :optional => true
    end
  end
end


