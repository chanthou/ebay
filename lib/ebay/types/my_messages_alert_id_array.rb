
module Ebay # :nodoc:
  module Types # :nodoc:
    # == Attributes
    #  value_array_node :alert_ids, 'AlertID', :default_value => []
    class MyMessagesAlertIDArray
      include XMLMappingTranslation
      include Initializer
      root_element_name 'MyMessagesAlertIDArray'
      value_array_node :alert_ids, 'AlertID', :default_value => []
    end
  end
end


