
module Ebay # :nodoc:
  module Requests # :nodoc:
    # == Attributes
    class GetStoreOptions < Abstract
      include XMLMappingTranslation
      include Initializer
      root_element_name 'GetStoreOptionsRequest'
    end
  end
end


