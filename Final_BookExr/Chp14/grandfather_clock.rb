def say_dong &block
	current_hour = Time.new.hour
	if current_hour > 12
		hour = hour - 12
	else
    hour = current_hour % 12
  end
  (1..hour).each do 
 	  block.call
  end 
end
say_dong do 
 puts "DONG!"
end



