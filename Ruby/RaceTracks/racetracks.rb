# When the race starts, each RaceCar on the track gets a random speed between 60-80 MPH
# A user can forward the race by 1 hour at a time and check how far each car has gotten.
# After every hour of the race, each car's speed increases by a random amount between 0-20 MPH
# At the end of the 5 hours, you can print the winner of the race. You should also set the speed of the cars to 0 to indicate you're resetting the race.


class RaceTracks
  attr_accessor :title
  
  def initialize(title)
    @title = title
    @cars = []
  end
  
  def add_car(car)
    @cars << car
  end
  
  
  def start_race(hours)
    puts "There are #{@cars.size} cars competing in #{@title}"
    
    @cars.each do |car|
      car.start_speed
      #puts car
    end
    p "----------------------------"
    1.upto(hours) do |hour|
      if hour == 1
      puts "\n At the end of #{hour} Hour:"
      @cars.each do |car|
      car.added_speed_by_each_hour
      end
      else
      
      puts "\n At the end of #{hour} Hours:"
      
      @cars.each do |car|
      car.added_speed_by_each_hour
      
      end
      end
      p "----------------------------"
      p "----------------------------"
      
    end 
    
  end      
end

class RaceCars
  
  def initialize(name, speed=0)
    @name = name
    @speed = speed
    
  end
  
  def start_speed
    @speed = rand(60..80)
    puts "#{@name} start with #{@speed}MPH."
  end
  
  def added_speed_by_each_hour
    @speed = rand(0..20)
    puts "#{@name} add #{@speed}MPH to his speed"
  end
  
  
end
