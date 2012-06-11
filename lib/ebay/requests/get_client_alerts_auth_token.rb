
module Ebay # :nodoc:
  module Requests # :nodoc:
    # == Attributes
    class GetClientAlertsAuthToken < Abstract
      include XMLMappingTranslation
      include Initializer
      root_element_name 'GetClientAlertsAuthTokenRequest'
    end
  end
end


