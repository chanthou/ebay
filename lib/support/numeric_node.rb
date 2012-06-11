require 'happymapper'

class NumericNode

  def self.parse_number(text)
    begin
      Integer(txt)
    rescue ArgumentError
      Float(txt)
    end
  end
end
