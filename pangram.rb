def isPangram_helper(strings)
   

alphabet = "abcdefghijklmnopqrstuvwxyz"

  count = 0
  i = 0 
  
   while i < alphabet.length

      j = 0
      while j < strings.length
        if alphabet[i] == strings[j]
          count = count + 1
          i = i + 1
          j = - 1
        end
         j = j + 1
      end

      i = i + 1
      
  end
      
      
  puts(count)

  if count == 26
        return 1
  elsif count != 26
      return 0
   end
end

def isPangram(strings)
i = 0
output = []
while i < strings.length
  output.push(isPangram_helper(strings[i])) 
  i = i + 1
end
   output.join("")
return output

end

isPangram("The quick brown fox jumps over the lazy dog")
