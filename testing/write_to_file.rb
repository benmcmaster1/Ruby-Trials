filename = ARGV.first

#asking you if you want to proceed with the program, it will overwrite anything in the file
puts "Whe're going to erase #{filename}"
puts "If you don't want that, hit CTRL+C (^C)"
puts "If you do want that, hit RETURN"

#giving you a prompt to make your decision - anything other than CTRL+C will continue
$stdin.gets

# 'w' means you are doing a write only. makes the file 0 length (or creates a new one)
puts "Opening the file..."
target = open(filename, 'w')

# this sets it to be 0 characters
puts "Truncating the file. Goodbye!"
#target.truncate(0)

puts "Now I'm going to ask you for three lines."

#enter in a few lines and store them in variables
print "Line 1: "
line1 = $stdin.gets.chomp
print "Line 2: "
line2 = $stdin.gets.chomp
print "Line 3: "
line3 = $stdin.gets.chomp

puts "I'm going to write these to the file"

#writes each variable as a line (one per line)
target.write("#{line1}\n#{line2}\n#{line3}")

#closes the file
puts "And finally, we close it"
target.close
