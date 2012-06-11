
module Ebay # :nodoc:
  module Responses # :nodoc:
    # == Attributes
    #  numeric_node :folder_id, 'FolderID', :optional => true
    class AddSellingManagerInventoryFolder < Abstract
      include XMLMappingTranslation
      include Initializer
      root_element_name 'AddSellingManagerInventoryFolderResponse'
      numeric_node :folder_id, 'FolderID', :optional => true
    end
  end
end


