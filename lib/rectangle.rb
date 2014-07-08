#Class Rectangle calculates the perimeter of a given rectangle
class Rectangle
  attr_reader :length, :breadth
  def initialize(length, breadth)
    @length = length.convert_to_mm
    @breadth = breadth.convert_to_mm
  end

  def perimeter
    Length.new(2 * (@length + @breadth), :mm)
  end

  def ==(side)
    if (self.equal? side)
      true
    elsif (!(self.class == side.class))
      false
    else
      @length == side.length && @breadth == side.breadth
    end
  end

  def eql side
    self == side
  end


  def hash
    [@length, @breadth].hash
  end
end