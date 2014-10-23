class Person

	def initialize(name)
		@name = name 
	end

	def greeting
		puts "Hi, my name is #{@name}" #instance 
	end

end

class Student < Person

	def learn
	 puts ("I get it!")
	end
end


class Instructor < Person

	def teach
	  puts ("Everything in Ruby is an Object")	
	end
end


student = Student.new "Cristina"
student.greeting
student.learn


instructor = Instructor.new "Chris"
instructor.greeting 
instructor.teach