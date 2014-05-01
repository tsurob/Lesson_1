class Die
	def initialize
		roll
		
	end
	def roll
		@number_showing = 1 + rand(6)
	end
	def showing
		@number_showing	
	end	
end
die = Die.new 
# puts die.roll
# puts die.roll
die.roll
puts die.showing
puts die.showing
die.roll
puts die.showing
puts die.showing