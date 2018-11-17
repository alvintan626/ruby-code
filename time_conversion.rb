# Write a method that will take in a number of minutes, and returns a
# string that formats the number into `hours:minutes`.
#
# Difficulty: easy.

puts( 00 + 9)
def time_conversion(minutes)

hour = minutes/60
seconds = 00 + minutes % 60

  if seconds < 10
    time = hour.to_s + ":0" + seconds.to_s
  elsif
    time = hour.to_s + ":" + seconds.to_s
  end

return time


end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #time_conversion")
puts("===============================================")
    puts('time_conversion(15) == "0:15": ' + (time_conversion(15) == '0:15').to_s)
    puts('time_conversion(150) == "2:30": ' + (time_conversion(150) == '2:30').to_s)
    puts('time_conversion(360) == "6:00": ' + (time_conversion(360) == '6:00').to_s)
puts("===============================================")
