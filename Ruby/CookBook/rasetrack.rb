class RaceTracks
  attr_accessor :title
  
  def initialize(title)
    @title = title
    @cars = []
  end
  
  def add_car(car)
    @cars << car
  end
  
  def start_race
    puts "There are #{@cars.size} cars in #{@title}"
    
  end
end

class RaceCars
  
  def initialize(name, speed=0)
    @name = name
    @speed = speed
    
  end
end

race = RaceTracks.new("Abuja Open")
car1 = RaceCars.new("Jetta", 40)
car2 = RaceCars.new("Highlande", 45)
car3 = RaceCars.new("Porche", 55)
car4 = RaceCars.new("Audi", 35)

race.add_car(car1)
race.add_car(car2)
race.add_car(car3)
race.add_car(car4)

race.start_race


