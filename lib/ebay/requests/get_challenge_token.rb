
module Ebay # :nodoc:
  module Requests # :nodoc:
    # == Attributes
    class GetChallengeToken < Abstract
      include XMLMappingTranslation
      include Initializer
      root_element_name 'GetChallengeTokenRequest'
    end
  end
end


