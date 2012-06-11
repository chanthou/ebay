
module Ebay # :nodoc:
  module Requests # :nodoc:
    # == Attributes
    #  numeric_node :page_id, 'PageID', :optional => true
    class GetStoreCustomPage < Abstract
      include XMLMappingTranslation
      include Initializer
      root_element_name 'GetStoreCustomPageRequest'
      numeric_node :page_id, 'PageID', :optional => true
    end
  end
end


