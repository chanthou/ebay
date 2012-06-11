
module Ebay # :nodoc:
  module Requests # :nodoc:
    # == Attributes
    #  text_node :seller_id, 'SellerID', :optional => true
    #  boolean_node :include_asq_preferences, 'IncludeASQPreferences', 'true', 'false', :optional => true
    class GetMessagePreferences < Abstract
      include XMLMappingTranslation
      include Initializer
      root_element_name 'GetMessagePreferencesRequest'
      text_node :seller_id, 'SellerID', :optional => true
      boolean_node :include_asq_preferences, 'IncludeASQPreferences', 'true', 'false', :optional => true
    end
  end
end


