class Cooking
  attr_accessor :amount, :unit

  def initialize(amount, unit="tablespoons")
    @amount = amount
    @unit = unit
  end

  def to_liters
    case self.unit
      when "tablespoons" then (self.amount / 67.628).round(2)
      when "teaspoons" then (self.amount / 202.884).round(2)
      when "ounces" then (self.amount / 33.814).round(2)
      when "cups" then (self.amount / 4.22675).round(2)
      when "pints" then (self.amount / 2.11338).round(2)
      when "quarts" then (self.amount / 1.05669).round(2)
      when "gallons" then (self.amount * 3.78541).round(2)
    end
  end

  def to_teaspoons
    self.unit == "teaspoons" ? self.amount : (self.to_liters * 202.884).round(1)
  end

  def to_tablespoons
    self.unit == "tablespoons" ? self.amount : (self.to_liters * 67.628).round(1)
  end

  def to_cups
    self.unit == "cups" ? self.amount : (self.to_liters * 4.22675).round(2)
  end

  def to_pints
    self.unit == "pints" ? self.amount : (self.to_liters * 2.11338).round(2)
  end

  def to_quarts
    self.unit == "quarts" ? self.amount : (self.to_liters * 1.05669).round(2)
  end

  def to_gallons
    self.unit == "gallons" ? self.amount : (self.to_liters / 3.78541).round(2)
  end

  alias :to_tsp :to_teaspoons
  alias :to_tbs :to_tablespoons
  alias :to_q   :to_quarts
  alias :to_g   :to_gallons

end
