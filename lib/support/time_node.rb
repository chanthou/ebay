class TimeNode
  def self.parse_value(value)
    Time.parse(value) if value
  end
end
