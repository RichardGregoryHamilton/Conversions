class Temperature

  attr_accessor :temperature, :scale

  def initialize(temperature, scale="farenheit")
    @temperature = temperature
    @scale = scale
  end

  def to_farenheit
    self.scale == "farenheit" ? self.temperature : ((self.temperature * 1.8) + 32).round
  end

  def to_celsius
    if self.scale == "celsius"
      self.temperature
    else
      ((self.temperature - 32) * 0.556).round
    end
  end

end
