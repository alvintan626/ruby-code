def disemvowel(str)

vowel = "aeiou"
i = 1 
j = 0
newstring = []

while i < str.length

    newstring.push(str[i-1])

    if str[i] != vowel[0] || vowel[1] || vowel[2] || vowel[3] || vowel[4] 
      newstring.push(str[i])
    end

puts(newstring.join)
  i = i + 2
end

return newstring.join

end

disemvowel("abcdefefefeef")

# Given a string, remove every vowel if its index is odd.
Hint: Rather than deleting characters (which would shift which characters are even and odd each time), construct a new string without the unwelcome vowels.
