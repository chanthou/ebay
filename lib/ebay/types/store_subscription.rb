
module Ebay # :nodoc:
  module Types # :nodoc:
    # == Attributes
    #  text_node :level, 'Level', :optional => true
    #  money_node :fee, 'Fee', :optional => true
    class StoreSubscription
      include XMLMappingTranslation
      include Initializer
      root_element_name 'StoreSubscription'
      text_node :level, 'Level', :optional => true
      money_node :fee, 'Fee', :optional => true
    end
  end
end


