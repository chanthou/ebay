require 'ebay/types/checkout_status'
require 'ebay/types/shipping_details'
require 'ebay/types/address'
require 'ebay/types/shipping_service_options'
require 'ebay/types/external_transaction'
require 'ebay/types/transaction'
require 'ebay/types/payment_hold_detail'
require 'ebay/types/refund'

module Ebay # :nodoc:
  module Types # :nodoc:
    # == Attributes
    #  text_node :order_id, 'OrderID', :optional => true
    #  text_node :order_status, 'OrderStatus', :optional => true
    #  money_node :adjustment_amount, 'AdjustmentAmount', :optional => true
    #  money_node :amount_paid, 'AmountPaid', :optional => true
    #  money_node :amount_saved, 'AmountSaved', :optional => true
    #  object_node :checkout_status, 'CheckoutStatus', :class => CheckoutStatus, :optional => true
    #  object_node :shipping_details, 'ShippingDetails', :class => ShippingDetails, :optional => true
    #  text_node :creating_user_role, 'CreatingUserRole', :optional => true
    #  time_node :created_time, 'CreatedTime', :optional => true
    #  value_array_node :payment_methods, 'PaymentMethods', :default_value => []
    #  text_node :seller_email, 'SellerEmail', :optional => true
    #  object_node :shipping_address, 'ShippingAddress', :class => Address, :optional => true
    #  object_node :shipping_service_selected, 'ShippingServiceSelected', :class => ShippingServiceOptions, :optional => true
    #  money_node :subtotal, 'Subtotal', :optional => true
    #  money_node :total, 'Total', :optional => true
    #  array_node :external_transactions, 'ExternalTransaction', :class => ExternalTransaction, :default_value => []
    #  array_node :transactions, 'TransactionArray', 'Transaction', :class => Transaction, :default_value => []
    #  text_node :buyer_user_id, 'BuyerUserID', :optional => true
    #  time_node :paid_time, 'PaidTime', :optional => true
    #  time_node :shipped_time, 'ShippedTime', :optional => true
    #  boolean_node :integrated_merchant_credit_card_enabled, 'IntegratedMerchantCreditCardEnabled', 'true', 'false', :optional => true
    #  boolean_node :bundle_purchase, 'BundlePurchase', 'true', 'false', :optional => true
    #  text_node :buyer_checkout_message, 'BuyerCheckoutMessage', :optional => true
    #  text_node :eias_token, 'EIASToken', :optional => true
    #  text_node :payment_hold_status, 'PaymentHoldStatus', :optional => true
    #  object_node :payment_hold_details, 'PaymentHoldDetails', :class => PaymentHoldDetail, :optional => true
    #  money_node :refund_amount, 'RefundAmount', :optional => true
    #  text_node :refund_status, 'RefundStatus', :optional => true
    #  money_node :refund_amount, 'RefundAmount', :optional => true
    #  text_node :refund_status, 'RefundStatus', :optional => true
    #  array_node :refunds, 'RefundArray', 'Refund', :class => Refund, :default_value => []
    class Order
      include XML::Mapping
      include Initializer
      root_element_name 'Order'
      text_node :order_id, 'OrderID', :optional => true
      text_node :order_status, 'OrderStatus', :optional => true
      money_node :adjustment_amount, 'AdjustmentAmount', :optional => true
      money_node :amount_paid, 'AmountPaid', :optional => true
      money_node :amount_saved, 'AmountSaved', :optional => true
      object_node :checkout_status, 'CheckoutStatus', :class => CheckoutStatus, :optional => true
      object_node :shipping_details, 'ShippingDetails', :class => ShippingDetails, :optional => true
      text_node :creating_user_role, 'CreatingUserRole', :optional => true
      time_node :created_time, 'CreatedTime', :optional => true
      value_array_node :payment_methods, 'PaymentMethods', :default_value => []
      text_node :seller_email, 'SellerEmail', :optional => true
      object_node :shipping_address, 'ShippingAddress', :class => Address, :optional => true
      object_node :shipping_service_selected, 'ShippingServiceSelected', :class => ShippingServiceOptions, :optional => true
      money_node :subtotal, 'Subtotal', :optional => true
      money_node :total, 'Total', :optional => true
      array_node :external_transactions, 'ExternalTransaction', :class => ExternalTransaction, :default_value => []
      array_node :transactions, 'TransactionArray', 'Transaction', :class => Transaction, :default_value => []
      text_node :buyer_user_id, 'BuyerUserID', :optional => true
      time_node :paid_time, 'PaidTime', :optional => true
      time_node :shipped_time, 'ShippedTime', :optional => true
      boolean_node :integrated_merchant_credit_card_enabled, 'IntegratedMerchantCreditCardEnabled', 'true', 'false', :optional => true
      boolean_node :bundle_purchase, 'BundlePurchase', 'true', 'false', :optional => true
      text_node :buyer_checkout_message, 'BuyerCheckoutMessage', :optional => true
      text_node :eias_token, 'EIASToken', :optional => true
      text_node :payment_hold_status, 'PaymentHoldStatus', :optional => true
      object_node :payment_hold_details, 'PaymentHoldDetails', :class => PaymentHoldDetail, :optional => true
      money_node :refund_amount, 'RefundAmount', :optional => true
      text_node :refund_status, 'RefundStatus', :optional => true
      money_node :refund_amount, 'RefundAmount', :optional => true
      text_node :refund_status, 'RefundStatus', :optional => true
      array_node :refunds, 'RefundArray', 'Refund', :class => Refund, :default_value => []
    end
  end
end


