class Book
  attr_accessor :title

  def title
    words = @title.split(" ")
    words[0].capitalize!
    little_words = ["and", "the", "over", "of", "in", "a","an"]
    new_title = words.map do |x| 
      if little_words.include?(x)
        x
      else
        x.capitalize
      end
    end
    new_title.join(" ")
  end
end