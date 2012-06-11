
module Ebay # :nodoc:
  module Requests # :nodoc:
    # == Attributes
    #  numeric_node :task_id, 'TaskID', :optional => true
    class GetStoreCategoryUpdateStatus < Abstract
      include XMLMappingTranslation
      include Initializer
      root_element_name 'GetStoreCategoryUpdateStatusRequest'
      numeric_node :task_id, 'TaskID', :optional => true
    end
  end
end


