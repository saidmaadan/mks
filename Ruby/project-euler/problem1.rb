# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get
# 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.
# 

num = (1...1000)
total = 0
num.collect do |n|
  if n % 3 == 0 || n % 5 == 0
    total +=n
  end
end
puts total

# another method
# p (1..999).find_all { |i| i % 3 == 0 || i % 5 == 0 }.inject(:+)
