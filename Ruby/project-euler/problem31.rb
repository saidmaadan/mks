
# In England the currency is made up of pound, £, and pence, p, and there are
# eight coins in general circulation:
# 1p, 2p, 5p, 10p, 20p, 50p, £1 (100p) and £2 (200p).
# It is possible to make £2 in the following way:
# 1£1 + 150p + 220p + 15p + 12p + 31p
# How many different ways can £2 be made using any number of coins?
# 

count = 0
200.step(0, -200) do |a|
  a.step(0, -100) do |b|
    b.step(0, -50) do |c|
      c.step(0, -20) do |d|
        d.step(0, -10) do |e|
          e.step(0, -5) do |f|
            f.step(0, -2) do
              count += 1
            end
          end
        end
      end
    end
  end
end
puts count

