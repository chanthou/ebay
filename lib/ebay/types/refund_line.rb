
module Ebay # :nodoc:
  module Types # :nodoc:
    # == Attributes
    #  
    class RefundLine
      include XML::Mapping
      include Initializer
      root_element_name 'RefundLine'
      
    end
  end
end


