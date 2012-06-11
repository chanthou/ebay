
module Ebay # :nodoc:
  module Responses # :nodoc:
    # == Attributes
    class ReviseMyMessagesFolders < Abstract
      include XMLMappingTranslation
      include Initializer
      root_element_name 'ReviseMyMessagesFoldersResponse'
    end
  end
end


