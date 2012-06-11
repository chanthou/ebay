
module Ebay # :nodoc:
  module Responses # :nodoc:
    # == Attributes
    class SetStore < Abstract
      include XMLMappingTranslation
      include Initializer
      root_element_name 'SetStoreResponse'
    end
  end
end


