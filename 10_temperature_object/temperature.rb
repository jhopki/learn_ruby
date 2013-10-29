class Temperature
  attr_accessor :f, :c 
  def initialize(temp_hash)
    @temp_hash = temp_hash
    @temp_f = @temp_hash[:f]
    @temp_c = @temp_hash[:c]
  end

  def to_fahrenheit
    @temp_f = (@temp_c*9/5) + 32 if @temp_hash.has_key?(:c)
    return @temp_f
  end

  def to_celsius
    @temp_c = (@temp_f-32)*5/9 if @temp_hash.has_key?(:f)
    return @temp_c
  end

  def self.in_celsius(temp)
    self.new(:c => temp)
  end

  def self.in_fahrenheit(temp)
    self.new(:f => temp)
  end
end

class Celsius < Temperature

  def initialize(temp_c)
    @new_temp = Temperature.new(:c => temp_c)
  end

  def to_celsius
    @new_temp.to_celsius
  end

  def to_fahrenheit
    @new_temp.to_fahrenheit
  end

  def self.ctof(t)
    f = (t*9/5) + 32
  end

end

class Fahrenheit < Temperature

  def initialize(temp_f)
    @new_temp = Temperature.new(:f => temp_f)
  end
  def to_celsius
    @new_temp.to_celsius
  end

  def to_fahrenheit
    @new_temp.to_fahrenheit
  end

  def self.ftoc(t)
    c = (t-32)*5/9
  end
end