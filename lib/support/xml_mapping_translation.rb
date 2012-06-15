require 'happymapper'
require 'support/money_node'
require 'support/numeric_node'

module XMLMappingTranslation

  def self.included(base)
    base.send(:include, HappyMapper)
    base.extend ClassMethods
  end

  module ClassMethods

    def root_element_name(name)
      tag(name)
    end

    def array_node(*args)
      if Hash===args[-1]
        options = args.pop
      end

      name, path1, path2 = args
      tag = path2 || path1

      if options.has_key?(:default_value)
        raise "Only support default value of [] on array_node" if options[:default_value] != []
        options.delete(:default_value)
        options[:optional] = true
      end

      klass = options.delete(:class)
      raise "Require :class option on array_node" if klass.nil?
      hm_options = build_hm_options(tag, options)
      hm_options[:single] = false
      hm_options[:xpath] = "./#{path1}" if path2
      element name, klass, hm_options
    end

    def boolean_node(name, tag, true_value, false_value, options={})
      raise "Only support 'true', 't', and '1' as true values" unless [ 'true', 't', '1' ].include?(true_value.downcase)
      element name, Boolean, build_hm_options(tag, options)
    end

    def cdata_node(name, tag, options={})
      element name, String, build_hm_options(tag, options)
    end

    def money_node(name, tag, options={})
      hm_options = build_hm_options(tag, options)

      element name, MoneyNode, hm_options
    end

    def numeric_node(name, tag, options={})
      hm_options = build_hm_options(tag, options)
      hm_options[:parser] = :parse_number
      element name, NumericNode, hm_options
    end

    def object_node(name, tag, options={})
      klass = options.delete(:class)
      raise "Require :class option on object_node" if klass.nil?
      element name, klass, build_hm_options(tag, options)
    end

    def text_node(name, tag, options={})
      element name, String, build_hm_options(tag, options)
    end

    def time_node(name, tag, options={})
      hm_options = build_hm_options(tag, options)
      hm_options[:parser] = :parse_value
      hm_options[:on_save] = proc do |value| 
        return value if value.nil?
        
        raise "Not a Time object for #{name}: #{value}" unless value.is_a?(Time)
        value.strftime("%Y-%m-%d %H:%M:%S")
      end
      element name, TimeNode, hm_options
    end
    
    def value_array_node(*args)
      if Hash===args[-1]
        options = args.pop
      end
    
      name, path1, path2 = args
      tag = path2 || path1
      
      if options.has_key?(:default_value)
        raise "Only support default value of [] on array_node" if options[:default_value] != []
        options.delete(:default_value)
        options[:optional] = true
      end
      
      hm_options = build_hm_options(tag, options)
      hm_options[:single] = false
      hm_options[:xpath] = "./#{path1}/#{path2}" if path2
      element name, String, hm_options
    end

    def build_hm_options(tag, xm_options)
      hm_options = { :tag => tag, :single => true, :in_groups_of => 100 }
      xm_options = xm_options.dup
      
      # Happymapper does not support optional
      xm_options.delete(:optional)
      # raise "Happymapper only supports optional nodes" if !(xm_options.delete(:optional) || xm_options.delete(:hm_optional))
      raise "Unsupported options: #{xm_options.keys} for #{tag}" unless xm_options.empty?
      hm_options
    end

  end
end