class Weight

  attr_accessor :weight, :unit

  def initialize(weight, unit="pounds")
    @weight = weight
    @unit   = unit
  end

  def to_grams
    case self.unit
      when "miligrams" then self.weight / 1_000
      when "grams"     then self.weight
      when "ounces"    then self.weight * 28.3495
      when "pounds"    then self.weight * 453.592
      when "kilograms" then self.weight * 1_000
      when "tons"      then self.weight * 1_000_000
    end
  end

  def to_miligrams
    self.unit == "grams" ? self.weight : (self.to_grams * 1_000).round(2)
  end

  def to_ounces
    self.unit == "ounces" ? self.weight : (self.to_grams / 28.3495).round(2)
  end

  def to_pounds
    self.unit == "pounds" ? self.weight : (self.to_grams / 453.592).round(2)
  end

  def to_kilograms
    self.unit == "kilograms" ? self.weight : (self.to_grams / 1_000).round(2)
  end

  def to_tons
    self.unit == "tons" ? self.weight : (self.to_grams / 1_000_000).round(2)
  end

end
