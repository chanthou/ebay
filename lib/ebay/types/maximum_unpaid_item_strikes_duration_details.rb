
module Ebay # :nodoc:
  module Types # :nodoc:
    # == Attributes
    #  text_node :period, 'Period', :optional => true
    #  text_node :description, 'Description', :optional => true
    class MaximumUnpaidItemStrikesDurationDetails
      include XMLMappingTranslation
      include Initializer
      root_element_name 'MaximumUnpaidItemStrikesDurationDetails'
      text_node :period, 'Period', :optional => true
      text_node :description, 'Description', :optional => true
    end
  end
end


