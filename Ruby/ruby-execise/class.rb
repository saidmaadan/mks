# class Pet
#   def speak(noise_type)
#     puts #{noise_type}
#   end
#   
#   def name(nick_name)
#     puts "My Pet name is #{nick_name}!"
#   end
#   
#   def pet_age(years)
#     puts "My dog is #{years} old "
#   end
#   
#   def status(color, sex, eye)
#     puts "My Pet is #{color} in color, #{sex} with #{eye} eyes"
#   end
# end
# 
# dog = Pet.new
# dog.speak("Boom Boom")
# dog.name("BrimoDog")
# dog.pet_age (34)
# dog.status("brown", "male", "blue")


# Convert the following methods to use the send method.
5 * 5
5.send(:*,5)
# => 25

"omg".upcase
"omg".send(:upcase)
# => "OMG

['a', 'b', 'c'].at(1)
['a', 'b', 'c'].send(:at, 1)
# => "b"

['a', 'b', 'c'].insert(2, 'o', 'h', 'n', 'o')
['a', 'b', 'c'].send(:insert, 2, 'o', 'h', 'n', 'o')
# => ["a", "b", "o", "h", "n", "o", "c"]

{}.size
{}.send(:size)
# => 0

{character: "Mario"}.has_key?(:character)
{character: "Mario"}.send(:has_key?, :character)
# => true 

# Convert the following methods to not use the send method
6.send(:-, 32)
6.-32
# => -26 

{html: true, json: false}.send(:keys)
{html: true, json: false}.keys
# => [:html, :json] 

"MakerSquare".send(:*, 6)
"MakerSquare"* 6
# => "MakerSquareMakerSquareMakerSquareMakerSquareMakerSquareMakerSquare" 

"MakerSquare".send(:split, 'a')
"MakerSquare".split('a')
# => ["M", "kerSqu", "re"]
 
['alpha', 'beta'].send(:[], 3)
['alpha', 'beta'].[](3)
# => nil 




class Marker
  
  def set_color(color)
    @color = color
  end
  
  def write
    puts "I am writing with a #{@color} markers"
  end
end

red_marker = Marker.new
green_marker = Marker.new
red_marker.set_color("red")
green_marker.set_color("green")
red_marker.write
green_marker.write