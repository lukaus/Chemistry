# Element class

class Element
	atomicNumber = 0;
	symbol       = ""
	name         = ""
	root         = ""
	atomicMass   = 0.0
	ionicCharge  = 0
	isotopeMass = -0
	puts -3
	attr_accessor :atomicNumber, :symbol, :name, :root, :atomicMass, :ionicCharge

	def make(aNum, sym, nm, rt, aMass, ionChg)
		atomicNumber = aNum
		symbol       = sym
		name         = nm
		root         = rt
		atomicMass   = aMass
		ionicCharge  = ionChg
		puts "Made " + name + "!"
	end

	def display()
		puts "Worked!"
	end

end
