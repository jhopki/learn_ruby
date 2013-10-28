def reverser(str="hello")
  str = yield
  words = str.split(" ")
  rev_words = words.map {|x| x.reverse}
  rev_words.join(" ")
end

def adder(i=3)
  num = yield
  num += i 
end