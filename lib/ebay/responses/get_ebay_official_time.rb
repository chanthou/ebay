
module Ebay # :nodoc:
  module Responses # :nodoc:
    # == Attributes
    class GeteBayOfficialTime < Abstract
      include XMLMappingTranslation
      include Initializer
      root_element_name 'GeteBayOfficialTimeResponse'
    end
  end
end


