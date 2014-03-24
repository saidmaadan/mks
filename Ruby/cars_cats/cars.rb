class Car
  @@total_car_count = 0 # class variable
  @@cars_per_color = Hash.new(0) #class variable with an empty hash
  
  attr_reader :color

  def self.total_car_count  #class method to calculate total number of cars
  	@@total_car_count
  end

  def cars_per_color #class method to determine number of cars per color
		@@cars_per_color
	end
  
	def to_s()
		"I'm a car! I've driven #{@distance} and have #{@fuel} gallons gas left"
	end

	def initialize(color = 'green')
		@fuel = 10
		@distance = 0
		@color = color
		@@total_car_count += 1
		@@cars_per_color[color] += 1
	end

	def color=(color) # method to set color and update cars per color hash
		@@cars_per_color[@color] -= 1
		@color = color
		@@cars_per_color[@color] += 1
	end

	def drive(miles)
		if (@fuel - miles/20.0) >= 0
			@distance += miles
			@fuel -= miles/20.0
		else
			@distance += @fuel * 20.0
			@fuel = 0
			puts "You're out of gas!"
		end
	end

	def fuel_up()
		gallons_needed = 10.0 - @fuel
		puts "You must pay $#{3.5 * gallons_needed}"
		@fuel = 10.0
	end
end

class ConvertibleCar < Car
 
   attr_accessor :roof_status
 
   def initialize(color='green')
     super(color)
     
     @roof_status = []
   end
 
   def car_type # to determine if the car is convertible or not
     if @roof_status == "open" || @roof_status == "closed"
       puts "This is convertible car"
     else 
       puts "Not a convertible car"
     end
     end
 
   def top_down
     @roof_status = 'open'
   end
 
   def close_top
     @roof_status = 'closed'
   end
 end