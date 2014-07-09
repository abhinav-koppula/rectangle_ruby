#checks the type of unit
class Unit
  attr_reader :unit
  MM = Object.new
  CM = Object.new
  M = Object.new

  def initialize unit
    @unit = unit
  end

  def convert_to_mm(value)
    if @unit == Unit::CM
      converted_value = 10 * value
    elsif @unit == Unit::M
      converted_value = 1000 * value
    else
      converted_value = 1 * value
    end
  end
end
