#checks the type of unit
class Unit
  def initialize conversion_factor
    @conversion_factor = conversion_factor
  end

  def convert_to_mm(value)
    value * @conversion_factor
  end
end

Unit::MM = Unit.new(1)
Unit::CM = Unit.new(10)
Unit::M = Unit.new(1000)