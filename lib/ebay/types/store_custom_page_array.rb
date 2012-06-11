require 'ebay/types/store_custom_page'

module Ebay # :nodoc:
  module Types # :nodoc:
    # == Attributes
    #  array_node :custom_pages, 'CustomPage', :class => StoreCustomPage, :default_value => []
    class StoreCustomPageArray
      include XMLMappingTranslation
      include Initializer
      root_element_name 'StoreCustomPageArray'
      array_node :custom_pages, 'CustomPage', :class => StoreCustomPage, :default_value => []
    end
  end
end


