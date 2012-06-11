
module Ebay # :nodoc:
  module Types # :nodoc:
    # == Attributes
    #  text_node :rating_detail, 'RatingDetail', :optional => true
    #  numeric_node :rating, 'Rating', :optional => true
    class ItemRatingDetails
      include XMLMappingTranslation
      include Initializer
      root_element_name 'ItemRatingDetails'
      text_node :rating_detail, 'RatingDetail', :optional => true
      numeric_node :rating, 'Rating', :optional => true
    end
  end
end


