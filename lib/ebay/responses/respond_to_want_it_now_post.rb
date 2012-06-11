
module Ebay # :nodoc:
  module Responses # :nodoc:
    # == Attributes
    class RespondToWantItNowPost < Abstract
      include XMLMappingTranslation
      include Initializer
      root_element_name 'RespondToWantItNowPostResponse'
    end
  end
end


