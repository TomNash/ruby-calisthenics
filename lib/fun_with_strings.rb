module FunWithStrings
  def palindrome?
    self.gsub!(/\W/,'')
    self.downcase == self.downcase.reverse
  end
  def count_words
    result = Hash.new
    self.split(/\W+/).each { |word| word.downcase!; /[a-z]+/ =~ word ? (result.has_key?(word) ? result[word] += 1 : result[word] = 1) : next }
    result
  end
  
  def anagram_groups
    /[a-z]+/ =~ self ? self.split(' ').group_by { |x| x.chars.sort.join }.values : []
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
