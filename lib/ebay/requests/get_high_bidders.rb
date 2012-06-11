
module Ebay # :nodoc:
  module Requests # :nodoc:
    # == Attributes
    #  text_node :item_id, 'ItemID', :optional => true
    class GetHighBidders < Abstract
      include XMLMappingTranslation
      include Initializer
      root_element_name 'GetHighBiddersRequest'
      text_node :item_id, 'ItemID', :optional => true
    end
  end
end


