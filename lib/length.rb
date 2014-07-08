#Class length represents a side and converts the side into mm
class Length
  attr_reader :length
  def initialize(length, unit)
    @length = length
    @unit = unit
  end

  def convert_to_mm
    if @unit == Unit::CM
      side = (@length) * 10
    elsif @unit == Unit::M
      side = (@length) * 1000
    else
      @length
    end
  end

end