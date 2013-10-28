def translate(str)
  words = str.split(" ")
  words.map do |x|
    if x.index(/[aeiou]/) == 0
      x << "ay"
    elsif x[1].index(/[aeiou]/) == 0 && x[0,2] != "qu"
      x << "#{x[0]}ay"
      x[0] = ""
    elsif x[2].index(/[aeiou]/) == 0 && x[1,2] != "qu"
      start = x[0,2]
      x[0,2] = ""
      x << "#{start}ay"
    else 
      start = x[0,3]
      x[0,3] = ""
      x << "#{start}ay"
    end
  end
  words.join(" ")
end