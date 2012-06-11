
module Ebay # :nodoc:
  module Responses # :nodoc:
    # == Attributes
    class AddMemberMessageAAQToPartner < Abstract
      include XMLMappingTranslation
      include Initializer
      root_element_name 'AddMemberMessageAAQToPartnerResponse'
    end
  end
end


