
module Ebay # :nodoc:
  module Requests # :nodoc:
    # == Attributes
    class GetStorePreferences < Abstract
      include XMLMappingTranslation
      include Initializer
      root_element_name 'GetStorePreferencesRequest'
    end
  end
end


