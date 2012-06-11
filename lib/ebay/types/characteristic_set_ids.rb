
module Ebay # :nodoc:
  module Types # :nodoc:
    # == Attributes
    #  text_node :id, 'ID', :optional => true
    class CharacteristicSetIDs
      include XMLMappingTranslation
      include Initializer
      root_element_name 'CharacteristicSetIDs'
      text_node :id, 'ID', :optional => true
    end
  end
end


