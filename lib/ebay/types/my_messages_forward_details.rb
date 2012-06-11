
module Ebay # :nodoc:
  module Types # :nodoc:
    # == Attributes
    #  time_node :user_forward_date, 'UserForwardDate', :optional => true
    #  text_node :forward_message_encoding, 'ForwardMessageEncoding', :optional => true
    class MyMessagesForwardDetails
      include XMLMappingTranslation
      include Initializer
      root_element_name 'MyMessagesForwardDetails'
      time_node :user_forward_date, 'UserForwardDate', :optional => true
      text_node :forward_message_encoding, 'ForwardMessageEncoding', :optional => true
    end
  end
end


