require 'fileUtils'

Dir.chdir(open("#{Dir.home}/Music/Playlist"))

def shuffel some_arr
	rand_indx = 0
	temp = []
	return some_arr if some_arr.length <= 1

	#loop from 0 - length of the the array
	for i in 0..(some_arr.length - 1)
		
	    # Generate a random number between 0 and i 
		rand_indx = rand(0..i)
		
		# swap i with the location of that random number. 
		# swap_values(i,  rand_indx)
		temp = some_arr[i]
		some_arr[i] = some_arr[rand_indx]
		some_arr[rand_indx] = temp
		
	end
	some_arr

end
music_names = shuffel Dir['../List/**/*.{mp3}']
puts Dir.pwd
File.open 'playist.m3u', 'w' do |f|
	music_names.each do |ogg|
		f.write ogg+"\n"
	end
end


