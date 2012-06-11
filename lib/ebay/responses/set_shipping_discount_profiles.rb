
module Ebay # :nodoc:
  module Responses # :nodoc:
    # == Attributes
    class SetShippingDiscountProfiles < Abstract
      include XMLMappingTranslation
      include Initializer
      root_element_name 'SetShippingDiscountProfilesResponse'
    end
  end
end


