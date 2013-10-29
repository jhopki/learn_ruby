class Dictionary
  attr_accessor :entries
  def initialize
    @entries = {}
    @keywords
  end

  def add(new_entry)
    if new_entry.is_a?(Hash)
      new_key = new_entry.keys
      new_value = new_entry.values
      @entries[new_key[0]] = new_value[0]
    else
      @entries[new_entry] = nil
    end
  end

  def keywords
    @entries.keys.sort
  end

  def include?(keyword)
    @entries.has_key?(keyword)
  end

  def find(keyword)
    return @entries.select {|k,v| k.include?(keyword)}
    return {} if @entries.empty?
    return {} if @entries[keyword] == nil
    return @entries.select{|k,v| k == keyword} if @entries[keyword] != nil
  end
end