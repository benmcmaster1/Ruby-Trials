def start
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
	answer = $stdin.gets.chomp

	if answer == "BYE"
		puts "OH, ARE YOU LEAVING?"
	elsif !answer == "BYE" 
		start
	end

	answer = $stdin.gets.chomp

	if answer == "BYE"
		puts "OK SONNY, SEE YOU NEXT TIME - GIVE ME A KISSSS"
		exit(1)
	elsif !answer == "BYE"
		start
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