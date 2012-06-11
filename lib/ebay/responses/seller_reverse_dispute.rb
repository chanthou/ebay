
module Ebay # :nodoc:
  module Responses # :nodoc:
    # == Attributes
    class SellerReverseDispute < Abstract
      include XMLMappingTranslation
      include Initializer
      root_element_name 'SellerReverseDisputeResponse'
    end
  end
end


