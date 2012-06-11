
module Ebay # :nodoc:
  module Requests # :nodoc:
    # == Attributes
    class GetPictureManagerOptions < Abstract
      include XMLMappingTranslation
      include Initializer
      root_element_name 'GetPictureManagerOptionsRequest'
    end
  end
end


