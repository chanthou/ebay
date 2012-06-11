
module Ebay # :nodoc:
  module Types # :nodoc:
    # == Attributes
    #  numeric_node :measure, '', :optional => true
    class Measure
      include XMLMappingTranslation
      include Initializer
      root_element_name 'Measure'
      numeric_node :measure, '', :optional => true
    end
  end
end


