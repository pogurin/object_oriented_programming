class Rove

	def initialize(x,y,direction)
		@x = x
		@y = y
		@direction = direction 
	end

	def position 
		if 	 @direction == "N" 
			puts "now it is (#{@x},#{@y},North)"
		elsif @direction == "S"
			puts "now it is(#{@x},#{@y},South)"
		elsif @direction == "E"
			puts "now it is(#{@x},#{@y},East)"
		elsif @direction == "W"
			puts "now it is(#{@x},#{@y},West)"
		end	
	end 

	def read_instruction(instruction)
		@instruction = instruction
		if @instruction == "M"
			move 
		elsif @instruction == "L"
			turn_left
		elsif @instruction == "R"
			turn_right 
		end
	end

	def move
		if @direction == "N"
			puts "Hi I am R1,New place is (#{@x},#{@y+1},#{@direction})"
		elsif @direction == "S"
			puts "Hi I am R1,New place is (#{@x},#{@y-1},#{@direction})"
		elsif @direction == "E"
			puts "Hi I am R1,New place is (#{@x+1},#{@y},#{@direction})"
		elsif @direction == "W"
			puts "Hi I am R1,New place is (#{@x-1},#{@y},#{@direction})"
		end	
	end

	def turn_left
		if @direction == "N"
			puts "Hi I am R1,New place is (#{@x},#{@y},West)"
		elsif @direction == "S"
			puts "Hi I am R1,New place is (#{@x},#{@y},East)"
		elsif @direction == "E"
			puts "Hi I am R1,New place is (#{@x},#{@y},North)"
		elsif @direction == "W"
			puts "Hi I am R1,New place is (#{@x},#{@y},South)"
		end
	end

	def turn_right
		if @direction == "N"
			puts "Hi I am R1,New place is (#{@x},#{@y},East)"
		elsif @direction == "S"
			puts "Hi I am R1,New place is (#{@x},#{@y},West)"
		elsif @direction == "E"
			puts "Hi I am R1,New place is (#{@x},#{@y},South)"
		elsif @direction == "W"
			puts "Hi I am R1,New place is (#{@x},#{@y},North)"
		end
	end

end
	rove1 = Rove.new(5,10,"E")
	rove1.position # x:0 y:0　ｄ:N
	rove1.read_instruction("M")




class Rove

	def initialize(x,y,direction)
		@x = x
		@y = y
		@direction = direction
	end

	def position 
		if 	 @direction == "N" 
			puts "now it is (#{@x},#{@y},North)"
		elsif @direction == "S"
			puts "now it is(#{@x},#{@y},South)"
		elsif @direction == "E"
			puts "now it is(#{@x},#{@y},East)"
		elsif @direction == "W"
			puts "now it is(#{@x},#{@y},West)"
		end	
	end 

	def read_instruction(instruction)
		@instruction = instruction
		if @instruction == "M"
			move 
		elsif @instruction == "L"
			turn_left
		elsif @instruction == "R"
			turn_right 
		end
	end

	def move
		if @direction == "N"
			puts "Hi! I am R2, New place is (#{@x},#{@y+1},#{@direction})"
		elsif @direction == "S"
			puts "Hi! I am R2, New place is (#{@x},#{@y-1},#{@direction})"
		elsif @direction == "E"
			puts "Hi! I am R2, New place is (#{@x+1},#{@y},#{@direction})"
		elsif @direction == "W"
			puts "Hi! I am R2, New place is (#{@x-1},#{@y},#{@direction})"
		end	
	end

	def turn_left
		if @direction == "N"
			puts "Hi! I am R2, New place is (#{@x},#{@y},West)"
		elsif @direction == "S"
			puts "Hi! I am R2, New place is (#{@x},#{@y},East)"
		elsif @direction == "E"
			puts "Hi! I am R2, New place is (#{@x},#{@y},North)"
		elsif @direction == "W"
			puts "Hi! I am R2, New place is (#{@x},#{@y},South)"
		end
	end

	def turn_right
		if @direction == "N"
			puts "Hi! I am R2, New place is (#{@x},#{@y},East)"
		elsif @direction == "S"
			puts "Hi! I am R2, New place is (#{@x},#{@y},West)"
		elsif @direction == "E"
			puts "Hi! I am R2, New place is (#{@x},#{@y},South)"
		elsif @direction == "W"
			puts "Hi! I am R2, New place is (#{@x},#{@y},North)"
		end
	end
end
	rove2 = Rove.new(3,0,"W") 
	rove2.position # x:0 y:0　ｄ:N
	rove2.read_instruction("L")

	puts "Please put your order."
	user_input = gets.chomp
  	rove2.read_instruction(user_input)

read_instruction

