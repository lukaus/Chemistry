# Element class

class Element

=begin
FYI, =begin and =end define multi=line comments in Ruby

you can delete all this; I'm not sure what the scope is but it's not preserved
	atomicNumber = 0;
	symbol       = ""
	name         = ""
	root         = ""
	atomicMass   = 0.0
	ionicCharge  = 0
	isotopeMass = -0
	puts -3
If you want default values, but them in the parameter list, like:
def initialize(aNum=0, atomicMass = 0.0) etc. But it's better to fail than accept bad values
Also, Ruby is duck typed, so you can just assign values to a variable without declaring type like you did above.
=end

	attr_accessor :atomicNumber, :symbol, :name, :root, :atomicMass, :ionicCharge

	def initialize(aNum, sym, nm, rt, aMass, ionChg) # initialize() is what gets called when you call new()
		@atomicNumber = aNum			 
		@symbol       = sym			 # Instance variables start with @ sign
		@name         = nm			 # Otherwise, they are just local to the method
		@root         = rt			 # And vanish from scope when the method returns
		@atomicMass   = aMass
		@ionicCharge  = ionChg
		puts "Made " + name + "!"
	end

	def display()					# FYI, Ruby lets you leave of () if there are no params
		puts "Worked!"				# This could be def display
	end

end
