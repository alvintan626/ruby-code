# Write a method that takes in a string of lowercase letters (no
# uppercase letters, no repeats). Consider the *substrings* of the
# string: consecutive sequences of letters contained inside the string.
# Find the longest such string of letters that is a palindrome.
#
# Note that the entire string may itself be a palindrome.
#
# You may want to use Array's `slice(start_index, length)` method,
# which returns a substring of length `length` starting at index
# `start_index`:
#
#     "abcd".slice(1, 2) == "bc"
#     "abcd".slice(1, 3) == "bcd"
#     "abcd".slice(2, 1) == "c"
#     "abcd".slice(2, 2) == "cd"
#
# Difficulty: hard.



def longest_palindrome(string)

  isit = ""
  i = 0
  j = 0
  k = 0
  palin = []
  while i < string.length
    
    while j < string.length-1
      
      isit = string.slice(i,string.length - j)

      while k < isit.length/2
        if isit[k] != isit[isit.length-k-1]
          break
        else
          k = k + 1
        end

        palin1 = palin.push(isit)
      end
        
      j = j + 1

    end

    i = i + 1
    j = 0
  end

  final = palin1
  puts(final)
  puts(final[0].length)



    if palin1.length == 1
      return final[0]
    end


      m = 0
     while m < final.length-1
      if final[m].length <= final[m+1].length
        answer = final[m+1]
      end
      m = m + 1
      
    end
    return answer


end





#def longest_palindrome(string)
     
    #puts(string.slice(1,2) == "bc")
#end
=begin
     while m < final.length
      if final[m].length > final[m+1].length
        return final[m]
      end
      m = m + 1
      
    end
=end
# These are tests to check that your code is working. After writing
# your solution, they should all print true.


puts("\nTests for #longest_palindrome")
puts("===============================================")
    puts(
      'longest_palindrome("abcbd") == "bcb": ' +
      (longest_palindrome('abcbd') == 'bcb').to_s
    )
    puts(
      'longest_palindrome("abba") == "abba": ' +
      (longest_palindrome('abba') == 'abba').to_s
    )
    puts(
      'longest_palindrome("abcbdeffemadam") == "madam": ' +
      (longest_palindrome('abcbdeffemadam') == 'madam').to_s
    )
puts("===============================================")
