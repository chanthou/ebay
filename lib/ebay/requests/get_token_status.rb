
module Ebay # :nodoc:
  module Requests # :nodoc:
    # == Attributes
    class GetTokenStatus < Abstract
      include XMLMappingTranslation
      include Initializer
      root_element_name 'GetTokenStatusRequest'
    end
  end
end


