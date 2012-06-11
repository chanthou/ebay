
module Ebay # :nodoc:
  module Requests # :nodoc:
    # == Attributes
    class GetSellerDashboard < Abstract
      include XMLMappingTranslation
      include Initializer
      root_element_name 'GetSellerDashboardRequest'
    end
  end
end


