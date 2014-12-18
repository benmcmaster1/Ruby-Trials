def bottles
	while @bottleNum > 0
		puts "#{@bottleNum} bottles of beer on the wall."
		puts "#{@bottleNum} bottles of beer."
		puts "You take one down and pass it around."
		@bottleNum -= 1
		if @bottleNum == 0
			puts "No more bottles of beer on the wall"
		else
			puts "#{@bottleNum} bottles of beer on the wall"
			puts "----------------------"
		end
	end
end
@bottleNum = 100
bottles