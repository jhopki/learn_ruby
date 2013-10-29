def echo(str)
  str
end

def shout(str)
 str.upcase
end

def repeat(str, num=1)
  x = "#{str} "
  if num == 1
    (x*2).strip
  else
    (x*num).strip
  end
end

def start_of_word(str, i)
  str[0,i]
end

def first_word(str)
  words = str.split
  words[0]
end

def titleize(str)
  words = str.split
  words[0].capitalize!
  little_words = ["and", "the", "over"]
  new_str = words.map do |x| 
    if little_words.include?(x)
      x
    else
      x.capitalize
    end
  end
  new_str.join(" ")
end




