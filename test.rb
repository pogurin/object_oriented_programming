class Person
	def initialize(name)# name is parameter
		@name = name
	end 

	def change_name(name)
		@name = name
	end

	def greeting 
		puts "Hi, my name is #{@name}" #instance
	end

	def last_name(x)
		@Lname = x 
	end

	def full_name 
		puts "My name is #{@name} #{@Lname}"
	end
	 
	def middle_name(y)
		@Mname = y #フィックスされる。
	end

	def name_middle_last
		puts "My name is #{@name}#{@Mname}#{@Lname}"
	end
end

person = Person.new "Bob" # goes to initialize , and stop at ends.
person.greeting # goes to greeting 
person.change_name "Tom" #Tom = argument
person.greeting
person2 = Person.new "Alex"
person2.greeting 
person.greeting

person.last_name "Land" # Land is already inside of @Lname = Land (already settted)
person.full_name #@name = Tom

person.middle_name "M"
person.name_middle_last 






