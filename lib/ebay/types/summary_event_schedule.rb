
module Ebay # :nodoc:
  module Types # :nodoc:
    # == Attributes
    #  text_node :event_type, 'EventType', :optional => true
    #  text_node :summary_period, 'SummaryPeriod', :optional => true
    #  text_node :frequency, 'Frequency', :optional => true
    class SummaryEventSchedule
      include XMLMappingTranslation
      include Initializer
      root_element_name 'SummaryEventSchedule'
      text_node :event_type, 'EventType', :optional => true
      text_node :summary_period, 'SummaryPeriod', :optional => true
      text_node :frequency, 'Frequency', :optional => true
    end
  end
end


