
module Ebay # :nodoc:
  module Requests # :nodoc:
    # == Attributes
    class GetApiAccessRules < Abstract
      include XMLMappingTranslation
      include Initializer
      root_element_name 'GetApiAccessRulesRequest'
    end
  end
end


