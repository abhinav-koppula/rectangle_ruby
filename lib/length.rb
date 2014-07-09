#Class length represents a side and converts the side into mm
class Length
  attr_reader :length, :unit
  def initialize(length, unit)
    @length = length
    @unit = unit
  end

  def convert_to_mm
    @unit.convert_to_mm @length
  end

  def ==(other)
    return true if self.equal?(other)
    return false if other.nil?
    return false if other.class != self.class

    self.convert_to_mm == other.convert_to_mm
  end

  def hash
    37*(self.convert_to_mm.hash)
  end

  def eql? other
    self == other
  end

end