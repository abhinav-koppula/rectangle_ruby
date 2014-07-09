require 'spec_helper'

describe Rectangle do
  context "Rectangle to have a  perimeter" do
    it "perimeter should be 30 for length 5 and breadth 3 in cm" do
      rect=Rectangle.new(Length.new(5, Unit::CM), Length.new(3, Unit::CM))
      expected_perimeter = Length.new(160, Unit::MM)
      expect(rect.perimeter.length).to eq(expected_perimeter.length) #and expect(rect.perimeter.length).to eq(expected_perimeter.length)
    end

    it "perimeter should be 10600 for length 5m and breadth 3cm" do
      rect=Rectangle.new(Length.new(5, Unit::M), Length.new(3, Unit::CM))
      expected_perimeter = Length.new(10060, (Unit::MM))
      expect(rect.perimeter.length).to eq(expected_perimeter.length) and expect(rect.perimeter.length).to eq(expected_perimeter.length)
    end

    it "perimeter should be 900 for length 3cm and breadth 150mm" do
      rect=Rectangle.new(Length.new(3, Unit::CM), Length.new(150, Unit::MM))
      expected_perimeter = Length.new(360, Unit::MM)
      expect(rect.perimeter.length).to eq(expected_perimeter.length) and expect(rect.perimeter.length).to eq(expected_perimeter.length)
    end
  end

  context "equality check for rectangles" do
    it "Rectangle with length 3 and breadth 4 should be same as Rectangle with length 3 and Breadth 4" do
      rect1=Rectangle.new(Length.new(3, Unit::MM), Length.new(4, Unit::MM))
      rect2=Rectangle.new(Length.new(3, Unit::MM), Length.new(4, Unit::MM))
      expect(rect1).to eq(rect2)
    end
  end

  context "Equality and type check" do

    it 'equates to value of Length object' do
      length1 = Length.new(1, Unit::M)
      length2 = Length.new(1, Unit::M)
      expect(length1).to eq(length2)
    end

    it 'same Length should be equal' do
      length1 = Length.new(1, Unit::CM)
      expect(length1).to eq(length1)
    end

    it '2 Length added should have same type' do
      length1 = Length.new(1, Unit::MM)
      length2 = Object.new
      expect(length1).to_not eq(length2)
    end

    it 'same Lengths have same hash' do
      length1 = Length.new(1, Unit::M)
      length2 = Length.new(1, Unit::M)
      expect(length1.hash).to eq(length2.hash)
    end

    it 'Length should not be zero/nil' do
      length1 = Length.new(0, Unit::M)
      expect(length1).to_not eq(nil)
    end

    it "symmetric property" do
      length1 = Length.new(1, Unit::MM)
      length2 = Length.new(1, Unit::MM)
      expect(length1).to eq(length2) and expect(length2).to eq(length1)
    end

    it "transitive property" do
      length1 = Length.new(1, Unit::MM)
      length2 = Length.new(1, Unit::MM)
      length3 = Length.new(1, Unit::MM)
      expect(length1).to eq(length2) and expect(length2).to eq(length3) and expect(length3).to eq(length1)
    end
  end
end