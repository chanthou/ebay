
module Ebay # :nodoc:
  module Responses # :nodoc:
    # == Attributes
    class CompleteSale < Abstract
      include XMLMappingTranslation
      include Initializer
      root_element_name 'CompleteSaleResponse'
    end
  end
end


