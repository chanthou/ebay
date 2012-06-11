
module Ebay # :nodoc:
  module Types # :nodoc:
    # == Attributes
    #  value_array_node :message_ids, 'MessageID', :default_value => []
    class MyMessagesMessageIDArray
      include XMLMappingTranslation
      include Initializer
      root_element_name 'MyMessagesMessageIDArray'
      value_array_node :message_ids, 'MessageID', :default_value => []
    end
  end
end


