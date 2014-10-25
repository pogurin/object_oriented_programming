class Person
	def initialize(name)　# name is parameter
		@name = name
	end 

	def change_name(name)
		@name = name
	end

	def greeting 
		puts "Hi, my name is #{@name}" #instance
	end

	def last_name(x) #下から、person.last_name "Land"が反映される。
		@Lname = x 　#@nameにはxという変数が反映される。
		　　　　　　　 #今後は、@Lnameを使えば、xの値、つまり"Land"が入る。
	end

	def full_name 
		puts "My name is #{@name} #{@Lname}"
	end
	 
	def middle_name(y)　#yというvariableにしたから"M"というargumentが入る。
		@Mname = y #@Mnameに、yが代入される。
	end

	def name_middle_last
		puts "My name is #{@name}#{@Mname}#{@Lname}"
		#@Mnammeという箇所に"M"が入る。この命令は、下のperson.name_middle_last
		#という箇所からやってくる。 
	end
end

person = Person.new "Bob" # goes to initialize , and stop at ends.
                          # initializeの横の()に入る値は、newから。
                          # そして、@nameという箇所に変数が、そして変数の中の値が入って行く。
                          # 今後は、@nameと打つだけで変数のargumentが反映される。

person.greeting # goes to greeting 
person.change_name "Tom" #Tom = argument
person.greeting　#ここでは、@nameという箇所にはinitializedでdefineされた値がはいる。
person2 = Person.new "Alex" #.newを置けば	initializeの()が変更される。
person2.greeting 
person.greeting　#ここでの@nameには、新しくPerson.newで意義された"Alex"が入る。

person.last_name "Land" # Land is already inside of @Lname = Land (already settted)
person.full_name #@name = Tom

person.middle_name "M"
person.name_middle_last 



person.last_name "M"
"M"の部分は、variable等になり、(variable_name)などになることもある。
その際には、varilable_name = get.chomp などと別の箇所で
何の値が入るのかが定義される。

person.last_name "M"　
person 部分が、メソッドの所属するclassの名前。
last_name が"M"を入れ籠みたい変数を持つメソッドの名前。
def last_name(x)
ここのxの中に、"M"が代入される。
そして、インスタンスメソッドで、クラスの中ならばどこでもこの"M"
を呼び出せるようにする。
@last_name = x 
これで、x の値が、@last_nameというインスタンスメソッドに代入される。
@last_name を "#{@Lname}"という 形で打てば、クラスの中ならどこでも
x の値が、つまり"M"が呼び出せる。
他のクラスでも、@Lnameを使いたい際には、リーダーをセットすればいい。
値を変更したい場合は、ライターをセットすればOK。
また、他のファイルのクラスで使いたい際は、上のライターとセッター
だけではなく、
require_relative './contact.rb' # ここでコネクトさせる。
require_relative './rolodex.rb'	
などと、どこのファイルで使いたいのかを明記すること。




