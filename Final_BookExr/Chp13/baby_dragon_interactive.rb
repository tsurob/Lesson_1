class Dragon
	def initialize name
		@name = name
		@sleep = false
		@stuff_in_belly = 10 # He's full.
		@stuff_intestine = 0 # He doesn't need to go.
		puts "#{@name} is born."
	end
	def name
		@name
	end
	def feed
		puts "You feed #{@name}."
		@stuff_in_belly = 10
		passage_of_time
	end
	def walk
		puts "You walk #{@name}"
		@stuff_intestine = 0
		passage_of_time
	end
	def put_to_bed
		puts "You put #{@name} to bed."
		@asleep = true
		3.times do 
			if @asleep
				passage_of_time
			end
			if @asleep
				puts "#{@name} snores, filling the room with smoke."
			end
		end
		if @asleep
			@asleep = false
			puts "#{@name} wakes up slowly."
		end
	end
	def toss
		puts "You toss #{@name} up into the air."
		puts 'He giggles, which singes your eyebrows.'
		passage_of_time
	end
	def rock
		puts "You rock #{@name} gently."
		@asleep = true
		puts 'He briefly dozes off...'
		passage_of_time
		if @asleep
			@sleep = false
			puts '...but wakes when you stop'
		end


	end

	private
	# "private" means that the methods defined here are 
	# methods internal to the object. (You can feed your 
	# dragon, but you can't ask him wether he's hungry.)
	
	def hungry?
		# Meathod names can end with "?"
		# Usually, we do this only if the method 
		# returns true of false like this:
		@stuff_in_belly <=2
	end
	def poopy?
		@stuff_intestine >= 8
	end
	def passage_of_time
		
		if @stuff_in_belly > 0
			# Move food from belly to intestine.
			@stuff_in_belly = @stuff_in_belly - 1
			@stuff_intestine = @stuff_intestine + 1
		else # Our dragon is starving!
			if @asleep
				@sleep = false
				puts 'He wakes up suddenly!'
			end
			puts "#{@name} is starving! In desperation, he ate YOU!"
			exit # This quits the program.
		end	
		# if @stuff_in_intestine >= 10
		# 	@stuff_intestine = 0
		#   puts "Whoops! #{@name} had an accident..."
		# end
		
		if hungry?
			if @asleep
				@asleep = false
				puts 'He wakes up suddenly!'
      end
      puts "#{@name}'s stomach grumbles..."  
    end
    if poopy?
    	if @asleep
    		@asleep = false
    		puts 'He wakes up suddenly!'
    	end
    	puts "#{@name} does the potty dance.."
    end
	end		
end

def request new_object
	puts "What would ou like to do with #{new_object.name}?"
	command = ''
	until command == 'quit'
		puts "You options: 'feed', 'walk', 'toss', 'toss', 'put to bed', or 'quit'."
		print "> "
		command = gets.downcase.chomp
		if command == 'feed'
			new_object.feed
		elsif command == 'walk'
			new_object.walk
		elsif command == 'put to bed'
			new_object.put_to_bed
		elsif command == 'rock'
			new_object.rock
		elsif command == 'toss'
			new_object.toss
		elsif command == 'quit'
			exit
		else
			puts "Invalid entry!"
		end
	end
end
pet = Dragon.new 'Norbert'
request pet
# pet.feed
# pet.toss
# pet.walk
# pet.put_to_bed
# pet.rock
# pet.put_to_bed 
# pet.put_to_bed 
# pet.put_to_bed 
# pet.put_to_bed 