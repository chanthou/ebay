
module Ebay # :nodoc:
  module Responses # :nodoc:
    # == Attributes
    class SetUserPreferences < Abstract
      include XMLMappingTranslation
      include Initializer
      root_element_name 'SetUserPreferencesResponse'
    end
  end
end


