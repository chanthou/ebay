
module Ebay # :nodoc:
  module Responses # :nodoc:
    # == Attributes
    class RevokeToken < Abstract
      include XMLMappingTranslation
      include Initializer
      root_element_name 'RevokeTokenResponse'
    end
  end
end


