
module Ebay # :nodoc:
  module Types # :nodoc:
    # == Attributes
    #  text_node :site_id, 'SiteID', :optional => true
    class SiteLocation
      include XMLMappingTranslation
      include Initializer
      root_element_name 'SiteLocation'
      text_node :site_id, 'SiteID', :optional => true
    end
  end
end


