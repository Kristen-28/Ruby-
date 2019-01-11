x=0
puts "Enter you command and number:  "
while(1)
    command_ = gets.chomp.split(" ")
    command = command_[0]
    num = command_[1].to_i;
   
    if command=='add'
	    x+=num

	elsif command=='sub'
	  x-=num

	elsif command=='mul'
	  x*=num7

	elsif command=='div'
		if num==0 
			puts "division not possible"
	    else 
	    	x/=num
	    end

	elsif command=='exit'
		puts "clearing x"
		exit
    else 
    	puts "command not found"
    end

	if(command !='exit')
		puts "The answer is #{x}"
	end
    
end
