
module Ebay # :nodoc:
  module Responses # :nodoc:
    # == Attributes
    class SetTaxTable < Abstract
      include XMLMappingTranslation
      include Initializer
      root_element_name 'SetTaxTableResponse'
    end
  end
end


