def add(x,y)
  x+y
end

def subtract(x,y)
  x-y
end


def sum(arr)
  sum_arr = 0
  arr.each {|x| sum_arr += x }
  return sum_arr
end

def multiply(*x)
  sum = 1
  x.each {|y| sum *= y}
  sum
end

def factorial(num)
  fac = 1
  if num == 0
    return 1
  else
    while num > 0
      fac *= num
      num -= 1
    end
    return fac
  end
end