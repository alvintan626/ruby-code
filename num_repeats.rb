# Write a method that takes in a string and returns the number of
# letters that appear more than once in the string. You may assume
# the string contains only lowercase letters. Count the number of
# letters that repeat, not the number of times they repeat in the
# string.
#
# Difficulty: hard.

def num_repeats(string)

alphabet = "abcde"
  i = 0
  j = 0
  count = 0
  repeat = 0

while j < string.length
  while i < string.length  
    if alphabet[j] == string[i]
      count = count + 1
    end

    i = i + 1

    if count == 2
        repeat = repeat + 1
        count = 0
        j = j + 1
        i = 0
    end
  end

if count == 1
  count = 0
end
j = j + 1
i = 0
end

return repeat
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.
puts("\nTests for #num_repeats")
puts("===============================================")
    puts('num_repeats("abdbc") == 1: ' + (num_repeats('abdbc') == 1).to_s)
    # one character is repeated
    puts('num_repeats("aaa") == 1: ' + (num_repeats('aaa') == 1).to_s)
    puts('num_repeats("abab") == 2: ' + (num_repeats('abab') == 2).to_s)
    puts('num_repeats("cadac") == 2: ' + (num_repeats('cadac') == 2).to_s)
    puts('num_repeats("abcde") == 0: ' + (num_repeats('abcde') == 0).to_s)
puts("===============================================")
