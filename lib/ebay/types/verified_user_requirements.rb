
module Ebay # :nodoc:
  module Types # :nodoc:
    # == Attributes
    #  boolean_node :verified_user, 'VerifiedUser', 'true', 'false', :optional => true
    #  numeric_node :minimum_feedback_score, 'MinimumFeedbackScore', :optional => true
    class VerifiedUserRequirements
      include XMLMappingTranslation
      include Initializer
      root_element_name 'VerifiedUserRequirements'
      boolean_node :verified_user, 'VerifiedUser', 'true', 'false', :optional => true
      numeric_node :minimum_feedback_score, 'MinimumFeedbackScore', :optional => true
    end
  end
end


