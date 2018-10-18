# Write a method that takes in a number and returns a string, placing
# a single dash before and after each odd digit. There is one
# exception: don't start or end the string with a dash.
#
# You may wish to use the `%` modulo operation; you can see if a number
# is even if it has zero remainder when divided by two.
#
# Difficulty: medium.

def dasherize_number(num)

  new = num.to_s
  
  array = []
  newarray = []
  i = 0
  while i < new.length
  
    if new[i].to_i % 2 != 0 
      array.push("-")
      array.push(new[i])
      array.push("-")
    elsif new[i].to_i % 2 == 0 || new[i].to_i == "-"
      array.push(new[i])
    end
    i = i + 1

  end

  i = 1
  while i < array.length
    
    if array[i] == "-" && array[i-1] == "-"
      i = i + 1
    end
    newarray.push(array[i-1])
    i = i + 1
  end

 # puts(newarray)

  if newarray[newarray.length-1] == "-"
    finalarray = newarray.pop
  else
    finalarray = newarray
  end
  
  if newarray[0] == "-"
    finalarray = newarray.shift
  else
    finalarray = newarray
  end


  newarray.to_s
  puts(newarray.join(""))
  return newarray.join("")
  

end
  

# puts(num[0])
# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #dasherize_number")
puts("===============================================")
    puts(
      'dasherize_number(203) == "20-3": ' +
      (dasherize_number(203) == '20-3').to_s
    )
    puts(
      'dasherize_number(303) == "3-0-3": ' +
      (dasherize_number(303) == '3-0-3').to_s
    )
    puts(
      'dasherize_number(333) == "3-3-3": ' +
      (dasherize_number(333) == '3-3-3').to_s
    )
    puts(
      'dasherize_number(3223) == "3-22-3": ' +
      (dasherize_number(3223) == '3-22-3').to_s
    )
puts("===============================================")
