
module Ebay # :nodoc:
  module Responses # :nodoc:
    # == Attributes
    class SetStorePreferences < Abstract
      include XMLMappingTranslation
      include Initializer
      root_element_name 'SetStorePreferencesResponse'
    end
  end
end


