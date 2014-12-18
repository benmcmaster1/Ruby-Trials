# the user type in something
# whatever he typed in, go to to a method

# that method checks if what the user said is in normal case or uppercase
# it then passes what he said and whether it was uppercase or not, to another method which gives a random response, based on
# which case it was in

def start
	# puts "\nSay something to Grandma: "
	

	while true 
		puts "\nSay something to Grandma: "
		print "> "
		response = $stdin.gets.chomp

		if response == "BYE"
			byeEnding
		elsif response == response.upcase
			grandma_heard
		elsif response.downcase
			grandma_unheard
			
		end

	end
end

def byeEnding
	byecount = 1
	puts "WHAT? DID YOU SAY BYE?"
	print "> "
	bye = $stdin.gets.chomp

	while byecount < 3
		byecount += 1
		puts "OH ARE YOU LEAVING NOW, SON?"
	end
end

def grandma_heard
	random = rand(0..5)
	randomyear = rand(1930..1950)
	if random == 0
		puts "NO, NOT SINCE #{randomyear}!"
		start
	elsif random == 1
		puts "OH, THAT REMINDS ME OF A STORY..."
		start
	elsif random == 2
		puts "I THINK IT COST ABOUT TREE-FIDDY"
		start
	elsif random == 3
		puts "OH OOPS, I POOPED AGAIN"
		start
	elsif random == 4
		puts "I THINK GRANNY NEEDS A BIG CUDDLE AND A KISS"
		start
	elsif random == 5
		puts "HEAR, TAKE THIS MONEY AND DON'T TELL ANYONE"
		start
	end
end

def grandma_unheard
	random2 = rand(0..5)
	if random2 == 0
		puts "WHAT'S THAT SONNY, I DIDN'T HEAR YOU"
	elsif random2 == 1
		puts "SPEAK UP SONNY"
	elsif random2 == 2
		puts "YOU'RE GOING TO HAVE TO SPEAK UP"
	elsif random2 == 3
		puts "GRANNY DOESN'T HAVE HER HEARING AID IN"
	elsif random2 == 4
		puts "TALK UP WOULD YOU?"
	elsif random2 == 5
		puts "I CAN'T HEAR YOU, SPEAK UP SON!"			
end
end


start




