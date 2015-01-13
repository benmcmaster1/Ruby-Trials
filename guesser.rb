def get_number
	random = rand(1000)
	puts "Enter in number between 1 and 1000 to guess."
	10.times do |x| 
		print "Turn number #{x + 1}>> "
		guess = $stdin.gets.chomp.to_i
		if random == guess
			puts "Correct!"; break
		else
			x == 9 ? (puts "Woops, the number was #{random}!") :
			guess > random ? (puts "Too high!") : (puts "Too low!")
		end
	end
	puts "Thanks for playing!"
end

get_number