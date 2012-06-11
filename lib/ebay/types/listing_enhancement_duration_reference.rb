
module Ebay # :nodoc:
  module Types # :nodoc:
    # == Attributes
    #  text_node :duration, 'Duration', :optional => true
    class ListingEnhancementDurationReference
      include XMLMappingTranslation
      include Initializer
      root_element_name 'ListingEnhancementDurationReference'
      text_node :duration, 'Duration', :optional => true
    end
  end
end


