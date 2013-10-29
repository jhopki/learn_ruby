class Array
  attr_accessor :some_array

  def sum
    array_sum = 0
    if self != []
      self.each {|x| array_sum += x}
    end
    array_sum
  end

  def square
    new_array = self
    if self != []
      new_array = self.map {|x| x**2}
    end
    new_array
  end

  def square!
    new_array = self
    if self != []
      new_array = self.map {|x| x**2}
    end
    self.replace(new_array)
  end
end

