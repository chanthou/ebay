
module Ebay # :nodoc:
  module Responses # :nodoc:
    # == Attributes
    class SendInvoice < Abstract
      include XMLMappingTranslation
      include Initializer
      root_element_name 'SendInvoiceResponse'
    end
  end
end


