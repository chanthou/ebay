module Ebay # :nodoc:
  module Types # :nodoc:
    class RequiredSellerActionCode
      extend Enumerable
      extend Enumeration
      ResolveeBPCase = 'ResolveeBPCase'
      MarkAsShipped = 'MarkAsShipped'
      ContacteBayCS = 'ContacteBayCS'
      ResolvePPPIcase = 'ResolvePPPIcase'
      SetupPayoutMethod = 'SetupPayoutMethod'
      UpdatePayoutMethod = 'UpdatePayoutMethod'
      None = 'None'
    end
  end
end

