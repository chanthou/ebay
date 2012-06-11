
module Ebay # :nodoc:
  module Types # :nodoc:
    # == Attributes
    #  text_node :refund_option, 'RefundOption', :optional => true
    #  text_node :description, 'Description', :optional => true
    class RefundDetails
      include XMLMappingTranslation
      include Initializer
      root_element_name 'RefundDetails'
      text_node :refund_option, 'RefundOption', :optional => true
      text_node :description, 'Description', :optional => true
    end
  end
end


