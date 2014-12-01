# use final.txt
print "Enter in the filename: \n"
filename = $stdin.gets.chomp

text_contents = open(filename)

print text_contents.read