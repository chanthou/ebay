
module Ebay # :nodoc:
  module Requests # :nodoc:
    # == Attributes
    #  text_node :folder_name, 'FolderName', :optional => true
    #  numeric_node :parent_folder_id, 'ParentFolderID', :optional => true
    #  text_node :comment, 'Comment', :optional => true
    class AddSellingManagerInventoryFolder < Abstract
      include XMLMappingTranslation
      include Initializer
      root_element_name 'AddSellingManagerInventoryFolderRequest'
      text_node :folder_name, 'FolderName', :optional => true
      numeric_node :parent_folder_id, 'ParentFolderID', :optional => true
      text_node :comment, 'Comment', :optional => true
    end
  end
end


