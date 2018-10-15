# Write a method that takes a string and returns the number of vowels
# in the string. You may assume that all the letters are lower cased.
# You can treat "y" as a consonant.
#
# Difficulty: easy.

def count_vowels(string)

vowels = 0
list_of_vowels = ["a", "e", "i", "o", "u"]

i = 0 
while string.length > i

  j = 0
  while j < 5
    list_of_vowels[j]
    
    if string[i] == list_of_vowels[j]
  # "a" ||string[i] ==  "e" ||string[i] ==  "i" || string[i] == "o" || string[i] == "u"
    vowels = vowels + 1
    end

  j = j + 1 
  end
  i = i + 1
end

return vowels
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #count_vowels")
puts("===============================================")
    puts('count_vowels("abcd") == 1: ' + (count_vowels('abcd') == 1).to_s)
    puts('count_vowels("color") == 2: ' + (count_vowels('color') == 2).to_s)
    puts('count_vowels("colour") == 3: ' + (count_vowels('colour') == 3).to_s)
    puts('count_vowels("cecilia") == 4: ' + (count_vowels('cecilia') == 4).to_s)
puts("===============================================")
