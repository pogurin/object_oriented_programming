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

	def read_instruction(direction)
		if direction == "M"
			move 
		elsif direction == "L"
			turn_left
		elsif direction == "R"
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
	if @

	end

	def turn_right

	end


	# def move
	# 	if ahead 

	# 	elsif turn left 
	# 		y + 1
	# 	elsif turn right
	# 	 	x + 1
	# 	end
 # 	end
end

rove = Rove.new(0,0,"E")
rove.position # x:0 y:0　ｄ:N
rove.read_instruction("L")
rove.position


