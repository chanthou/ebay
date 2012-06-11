
module Ebay # :nodoc:
  module Responses # :nodoc:
    # == Attributes
    class DeleteSellingManagerInventoryFolder < Abstract
      include XMLMappingTranslation
      include Initializer
      root_element_name 'DeleteSellingManagerInventoryFolderResponse'
    end
  end
end


