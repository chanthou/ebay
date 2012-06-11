
module Ebay # :nodoc:
  module Responses # :nodoc:
    # == Attributes
    class SetNotificationPreferences < Abstract
      include XMLMappingTranslation
      include Initializer
      root_element_name 'SetNotificationPreferencesResponse'
    end
  end
end


