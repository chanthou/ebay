
module Ebay # :nodoc:
  module Responses # :nodoc:
    # == Attributes
    class MoveSellingManagerInventoryFolder < Abstract
      include XMLMappingTranslation
      include Initializer
      root_element_name 'MoveSellingManagerInventoryFolderResponse'
    end
  end
end


