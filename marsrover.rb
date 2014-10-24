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
			puts "(#{@x},#{@y+1},@direction)"
		elsif @direction == "S"
			puts "(#{@x},#{@y-1},@direction)"
		elsif @direction == "E"
			puts "(#{@x+1},#{@y},@direction)"
		elsif @direction == "W"
			puts "(#{@x-1},#{@y},@direction)"
		end	
	end

	def turn_left
		if @direction == "N"
			puts "(#{@x},#{@y},West)"
		elsif @direction == "S"
			puts "(#{@x},#{@y},East)"
		elsif @direction == "E"
			puts "(#{@x},#{@y}, North)"
		elsif @direction == "W"
			puts "(#{@x},#{@y}, South)"
		end
	end

	def turn_right
		if @direction == "N"
			puts "(#{@x},#{@y},East)"
		elsif @direction == "S"
			puts "(#{@x},#{@y},West)"
		elsif @direction == "E"
			puts "(#{@x},#{@y}, South)"
		elsif @direction == "W"
			puts "(#{@x},#{@y}, North)"
	end
end

rove = Rove.new(5,0,"W")
rove.position # x:0 y:0　ｄ:N
rove.read_instruction("R") 
rove.position

end
