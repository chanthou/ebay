
module Ebay # :nodoc:
  module Types # :nodoc:
    # == Attributes
    #  numeric_node :max_distance, 'MaxDistance'
    #  text_node :postal_code, 'PostalCode'
    class LocalSearch
      include XMLMappingTranslation
      include Initializer
      root_element_name 'LocalSearch'
      numeric_node :max_distance, 'MaxDistance'
      text_node :postal_code, 'PostalCode'
    end
  end
end


