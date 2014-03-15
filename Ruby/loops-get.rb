name = puts "Enter your age"
age = gets.chomp
if age.to_i >= 18
  puts "Congratulation, You are qualify to play this game"
  puts "Enter Your Full name: "
  name = gets.chomp
  puts "Select your game (Chess, Scrabble, Nudo, Draft) from the option"
  game = gets.chomp
else puts "Sorry, You are not fit to play the game"
end


