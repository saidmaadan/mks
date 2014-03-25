module Warn
	def roar
		puts "ROAR!"
	end
end

class Cat
	def purr
		puts 'meow'
	end
end

class Tiger < Cat
	include Warn
end

class Lion < Cat
	include Warn
	end

class Kitten < Cat
	end
	t = Tiger.new
	t.roar
	l =  Lion.new
	l.roar