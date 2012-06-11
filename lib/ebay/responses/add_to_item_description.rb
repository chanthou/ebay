
module Ebay # :nodoc:
  module Responses # :nodoc:
    # == Attributes
    class AddToItemDescription < Abstract
      include XMLMappingTranslation
      include Initializer
      root_element_name 'AddToItemDescriptionResponse'
    end
  end
end


