


def to_roman(num)
  romans = {
    "M" => 1000,
    "D" => 500,
    "C" => 100,
    "L" => 50,
    "X" => 10,
    "V" => 5,
    "I" => 1,
  }
  output = ""
  romans.each do |roman, arabic|
    if (num / arabic) >= 1
     output << roman * (num/arabic)
     num = num % arabic
   else
   end
 end
 output
end

# Drive code... this should print out trues.

puts to_roman(1) == "I"
puts to_roman(3) == "III"
puts to_roman(6) == "VI"
puts to_roman(14) == "XIIII"
puts to_roman(25) == "XXV"
puts to_roman(1050) == "ML"



# TODO: what other cases could you add to ensure your to_roman method is working?