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

  def tokens(string)
    operators = ["*","+","-","/"]
    items = string.split
    items.map do |x| 
      if operators.include?(x)
        x.to_sym  
      else
        x.to_i
      end
    end
  end

  def evaluate(string)
    what = tokens(string)
    numbers = []
    ops = []
    what.each do |x|
      if x.is_a?(Integer)
         push(x)
      else
        ops << x
      end
    end
    result = 0
    ops.each do |operator|
      result = plus if operator == :+ 
      result = minus if operator == :-
      result = times if operator == :*
      result = divide if operator == :/
    end
    result

  end
end