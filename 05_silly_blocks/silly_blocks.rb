def reverser(str="hello")
  str = yield
  words = str.split(" ")
  rev_words = words.map {|x| x.reverse}
  rev_words.join(" ")
end

def adder(i=1)
  num = yield
  num += i 
end

def repeater(i = 1)
  i.times { yield }
end