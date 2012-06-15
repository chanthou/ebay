require 'happymapper'
require 'money'

class MoneyNode
  def self.parse(node, options = {})
    tag = options[:tag] || options[:name].to_s
    namespace = options[:namespace]
    xpath_options = options[:namespaces]
    
    xpath = ""
    xpath += "#{namespace}:" if namespace
    xpath += tag
    
    money_node = node.xpath(xpath, xpath_options).first
    
    new_node = nil
    if money_node
      amount = money_node.text.to_f
      currency_id = money_node.attributes["currencyID"].text
    
      new_node = Money.new((amount * 100).to_i, currency_id)
    end
    new_node
  end
  
  def self.to_xml_node(xml, item, options)
    tag = options[:tag] || options[:name].to_s
    item_namespace = options[:namespace]
    
    raise "Not a Money object: #{item}" unless Money === item
    
    amount = sprintf("%.2f", item.cents.to_f / 100  )
    currency = item.currency
    
    if item_namespace
      xml[item_namespace].send("#{tag}_",item.to_s)
    else
      xml.send("#{tag}_",amount,"currencyID"=>currency)
    end
  end
end
