require_relative 'cars'

car_a = Car.new("red")
car_b = Car.new()
puts car_a
puts car_b
car_a.drive(10)
puts car_a
puts car_b
car_a.drive(232)
car_b.drive(117)
puts car_a
puts car_b

car_a = ConvertibleCar.new
car_a.color 
car_a.top_down
car_a.close_top
car_a.car_type

