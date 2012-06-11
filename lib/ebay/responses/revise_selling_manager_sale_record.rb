
module Ebay # :nodoc:
  module Responses # :nodoc:
    # == Attributes
    class ReviseSellingManagerSaleRecord < Abstract
      include XMLMappingTranslation
      include Initializer
      root_element_name 'ReviseSellingManagerSaleRecordResponse'
    end
  end
end


