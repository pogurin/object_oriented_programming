class Person

	def initialize(name) #このパラメーターは、下からアギュメンとを受け取る。
		@name = name 
	end

	def greeting
		puts "Hi, my name is #{@name}" #instance 
	end

end


# .newするとinitializeに必ず返ってくる。その後に書いた名前が(name)の中に組み込まれる。
# 結果、@name = name というように、@にはnameの内容、つまり下で.newの後に書いた値が入る。
# その後の、greetingの中で@nameを呼べば、既に@nameの中にCristinaが入っている為に、その値が表れる。


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


student = Student.new "Cristina" # initializeへ。
student.greeting # ここでの変数は、@name 

student.learn # これは、initialize関係なく, def learn の内容を呼んでくれる。、

instructor = Instructor.new "Chris" #initializeへ (instructorとしているので被らない。) "Chris"はアギュメント。
instructor.greeting # ここでの変数は、@name

instructor.teach


