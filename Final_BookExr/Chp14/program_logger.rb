# def log(infor)
# 	yield(infor)
# 	puts "Beginning something in between"
# 	yield("returning....")
# 	puts "finish returning: "
# end
# log("Beginning"){|n| puts "#{n}: outer block"}
# 
# 
# def log(&block)
# 	do_something = block.call
# 	puts "Beginning #{do_something}"
# end
# # {} has a higher preference inside of the ruby interpreter

# log do
# 	'"some little block"....'
# end
# log do 
# 		'"...some litle block" finished, returning: 5 '
# 	end
# log do 
# 		'"...yet another block" finished, returning: '
# 	end
# 	
def log desc, &block
	puts 'Beginning "'+ desc + '"...'
	result = block.call
	puts '..."' + desc + '" finished, returning: ' + result.to_s
	
end
log 'outer block' do
	log 'some little block' do
		1**1 + 2**2
	end
	log 'yet another block' do 
		'!doof iahT ekil I'.reverse
	end
'0'==0
end