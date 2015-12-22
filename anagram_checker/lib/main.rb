def is_anagram(one, two)
  one.chars.sort.join == two.chars.sort.join
end


puts "Enter first string:"
one = gets.strip
puts "Enter second string:"
two = gets.strip
result = is_anagram(one,two)
puts (result)?("#{one} and #{two} are anagrams"):("#{one} and #{two} are not anagrams")
