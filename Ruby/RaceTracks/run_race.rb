require_relative 'racetracks'

race = RaceTracks.new("Abuja Open")
car1 = RaceCars.new("Jetta")
car2 = RaceCars.new("Highlande")
car3 = RaceCars.new("Porche")
car4 = RaceCars.new("Audi")

race.add_car(car1)
race.add_car(car2)
race.add_car(car3)
race.add_car(car4)

race.start_race(5)


