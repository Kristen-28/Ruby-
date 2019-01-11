class Calculator
	@original_num
	@command_num

	def initialize()   
		@original_num = 0
	end  

	def manage_command(command_num)
		@command_num = command_num
	end

	def add
		@original_num += @command_num
		@original_num
	end

	def sub
		@original_num -= @command_num
		@original_num
	end

	def mul
		@original_num *= @command_num
		@original_num 
	end

	def div
		if(@command_num!=0)
			@original_num/=@command_num
		else
			puts "division not possible"
		end
		@original_num
	end
end

puts "Enter you command and number:  "
calculator_obj = Calculator.new()

while(1)
	command_full=gets.chomp
	command_list=command_full.split(" ")
	command_num=command_list[1].to_i
	command_func=command_list[0]
	calculator_obj.manage_command(command_num)

  if (!command_list[1].is_a?(Fixnum))
  	puts "invaid operand"
  end

	if(command_func=="add") 
		puts calculator_obj.add()
	elsif(command_func=="sub") 
		puts calculator_obj.sub()
	elsif command_func=="mul"
		puts calculator_obj.mul()
	elsif command_func=="div"
		puts calculator_obj.div()
  elsif command_func=="exit"
  	exit
  else puts "command not found"
  end
end