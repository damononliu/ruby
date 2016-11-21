module FunWithStrings
  def palindrome?
    # your code here
    str = self.downcase.gsub(/[^A-Za-z]/,"")
    if (str.reverse == str)
    	true
    else
    	false
    end
  end
  def count_words
   # your code here
  str = self.downcase.gsub(/[^A-Za-z]/," ")
  count = Hash.new(0)
  words = str.split(" ")
  words.each  do |word|
  count[word] += 1
  end
  return count
  end
  def anagram_groups
   # your code here
   hash = Hash.new
   str = self.split(" ")
   str.each do |word|
     key = word.chars.sort.join
     if hash[key]
       hash[key] << word
     else
       hash[key] = [word]
     end
   end
   # result = []
   # hash.each do |k,v| 
   # result << v
   # end
   # return result
   return hash.values
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
