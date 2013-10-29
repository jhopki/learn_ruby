class RPNCalculator
  def initialize
    @numbers =[] 
    @total = 0
  end

  def push(num)
    @numbers.push(num)
  end

  def plus
    if @numbers.size < 2
      raise "calculator is empty"
    end
    x = @numbers.pop
    y = @numbers.pop
    @total = x+y
    @numbers.push(@total)
    @total
  end

  def minus
    if @numbers.size < 2
      raise "calculator is empty"
    end
    x = @numbers.pop
    y = @numbers.pop
    @total = y - x
    @numbers.push(@total)
    @total
  end

  def divide
    if @numbers.size < 2
      raise "calculator is empty"
    end
    x = @numbers.pop
    y = @numbers.pop
    @total = y/x.to_f
    @numbers.push(@total)
    @total
  end

  def times
    if @numbers.size < 2
      raise "calculator is empty"
    end
    x = @numbers.pop
    y = @numbers.pop
    @total = y * x
    @numbers.push(@total)
    @total
  end

  def value
    @total
  end  
end