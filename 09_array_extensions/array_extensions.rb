class Array
  attr_accessor :some_array

  def sum
    if @some_array == []
      array_sum = 0
    else
      @some_array.each {|x| array_sum += x}
    end
  end

end