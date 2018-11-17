Write a method that accepts two strings as arguments. If the second string can be spelled using letters from the first, return an array of the indices of the letters of the second string as they occur in the first (choose the earlier occurrence if a letter occurs more than once). Otherwise, return false. The second string may reuse letters from the first.
Examples:
wordplay('substandard', 'bad') => [2, 5, 7]
wordplay('shadowless', 'dashes') => [3, 2, 0, 1, 7, 0]
wordplay('cartoon', 'lineograph') => false


def wordplay(str1, str2)
array = []
i = 0
j = 0
  while i < str2.length
    while  j < str1.length
      if str2[i] == str1[j]
        array.push(j)
        j = 0
        break
      end
      j = j + 1
    end
  i = i + 1
  end
if array == []
return false
end
return array

end

wordplay('shadowless', 'dashes') 
