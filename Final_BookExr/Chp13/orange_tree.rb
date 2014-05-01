class OrangeTree
	attr_accessor :oranges, :color, :age, :height 
	def initialize(age=0, color='green')
		@oranges = 0
		@age     = age
		@height  = 3
		@color   = color
		@age     = age
		puts "A new tree has been instantiated and will grow yearly."
		puts "The tree is #{@age} years old and the color is #{@color}."
		
	end
	
	def height
		# This method return the height of the tree 
		puts "The current height is: #{@height} feet tall."
	end
	def grow
		@height += 5
		puts "The orange tree has grown #{@height} feet tall."	
	end
	def one_year_passes
		# This method ages the tree one year
		# if @command == 'grow'
		new_oranges = 0
		@age += 1
		puts "A year has pass by and the orange tree is #{@age} year old." 
		new_oranges = rand(48) + 20
		@oranges = new_oranges
	end
	def current_age
		@age
	end

	def die
		# This method kills the tree after few years
		if @age > 10
			puts "The orange tree has lived over #{@age} years and died."
		  exit
		else
			puts "The tree will die after 15 years. The tree is currently #{@age} years old."
		end
	end

	def count_the_oranges
		# This method will return the number of oranges that the tree produces
		# This method produces fruits after few years 
		# and increase more fruits as the tree get older
		if @age >= 3 
			puts "There are #{@oranges} oranges in your tree."
		else
			puts "There are #{@oranges} oranges in your tree." 	 
		end
		
	end
	def pick_an_orange
		# This method reduces the @orange_count by 1
		# and returns a string telling you how delicious the orange
		# was or else it tells there are no more orange to pick this year.
		# Oranges that are not picked by the end of a year falls of the tree
		# to start off a new year.
		picked_oranges = 0
		@oranges -= 1
		picked_oranges = picked_oranges + 1
		if picked_oranges <= 1
		 puts "You picked #{picked_oranges} orange!"
		else
			puts "You picked #{picked_oranges} oranges!"
		end
	end
end

def get_command instance_object
  while true
		if instance_object.current_age > 10
			instance_object.die
		end
		puts "what would you like to do? "
		puts "Your commands are: 'add a year', 'grow', 'pick', 'count', 'height', or 'quit'"
		print "> "
		command = gets.downcase.chomp
		if command == 'grow'
			instance_object.grow
		elsif command == 'pick'
			instance_object.pick_an_orange
		elsif command == 'add a year'
			instance_object.one_year_passes
			instance_object.grow
		elsif command == 'count'
			instance_object.count_the_oranges
		elsif command == 'height'
			instance_object.height
		elsif command == 'quit'
			exit
		else
			puts 'Invalid command!'
		end
	end
end	

mytree = OrangeTree.new(6, "yellow")
# mytree.current_age 
get_command mytree
# mytree.one_year_passes
# mytree.count_the_oranges
# mytree.pick_an_orange
# mytree.height
# mytree.die


