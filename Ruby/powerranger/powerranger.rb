module Fight
def initialize(strength, color)
    @strength = strength
		@color = color		
	end

	def run
		puts "'m on the run"
	end

	def scream
		puts "Oh my God"
	end

	def rest
	end

	def punch(person)
    
		if @strength > 5
			puts "#{person.name} has been Somersulted into thin air"
		else
			puts "#{person.name} is shouting #{scream} and #{run}"
		end
	end
end

class Person
	include Fight
  attr_accessor :name, :caffeine_level
	def initialize(name, caffeine_level = 0)
		@name = name
		@caffeine_level = caffeine_level
	end

	def drink_coffee
		puts "2 caffeine is added to your caffeine level. You are now on #{@caffeine_level + 2} caffeine level"
	end
end

class PowerRanger
	include Fight
		
	def use_megazord(person)
		if @strength >= 5000
			puts "You can use Megazord to defeat #{person.name}"
		else
			puts "Your #{@strength} strength is not enought to use Megazord"
	end
	end
end

class EvilNinja
	include Fight
  attr_accessor :evilness
	
	def cause_mayhem(person)
		puts "#{person.name} Has zero caffeine"
	end
end

def fight_scene
	person1 = Person.new("Steven", 5)
	person2 = Person.new("Bimbo",6)
	power1 = PowerRanger.new(6, "blue")
	power2 = PowerRanger.new(90000, "green")
	evil1 = EvilNinja.new(7, "dogge")
	evil2 = EvilNinja.new(12, "maylo")
	person1.drink_coffee
	person2.scream
	power1.punch(person1)
	power2.use_megazord(person1)
	evil2.cause_mayhem(person2)
end
fight_scene
