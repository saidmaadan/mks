class Person

	def initialize(name, caffeine_level = 0)
		@name = name
		@caffeine_level = caffeine_level
	end

	def run
		puts "'m on the run"
	end

	def scream
		puts "Oh my God"
	end

	def drink_coffee
		puts "Has #{@caffeine_level + 2} caffeine_level"
	end

end

class PowerRanger < Person

	def initialize(strength, color)
		@strength = strength
		@color = color
	end

	def punch(person)
		if @strength > 5
			puts "Somersult"
		else
			puts "#{scream} and #{run}"
		end
	end

	def rest
	end
	def use_megazord
		puts "Has total strength of #{@strength + 5000} "
	end

	end

class EvilNinja < Person

	def initialize(strength, evilness)
		@strength = strength
		@evilness = evilness
	end

	def punch(person)
		if @strength > 5
			puts "Somersult"
		else
			puts "#{scream} and #{run}"
		end
	end

	def cause_mayhem(person)
		puts "Has zero caffeine"

	end
end

def fight
	person1 = Person.new("Steven", 5)
	person2 = Person.new("Bimbo")
	power1 = PowerRanger.new(6, "blue")
	power2 = PowerRanger.new(2, "green")
	evil1 = EvilNinja.new(7, "dogge")
	evil2 = EvilNinja.new(12, "maylo")
	person1.drink_coffee
	person2.scream
	power1.punch(power1)
	power2.use_megazord
	evil1.punch(person2)
	evil2.cause_mayhem(person1)
	end
	puts fight
