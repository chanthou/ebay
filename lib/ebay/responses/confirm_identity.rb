
module Ebay # :nodoc:
  module Responses # :nodoc:
    # == Attributes
    #  text_node :user_id, 'UserID', :optional => true
    class ConfirmIdentity < Abstract
      include XMLMappingTranslation
      include Initializer
      root_element_name 'ConfirmIdentityResponse'
      text_node :user_id, 'UserID', :optional => true
    end
  end
end


