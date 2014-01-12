


def to_roman(num)
  romans = {
    "M" => 1000,
    "CM" => 900,
    "D" => 500,
    "CD" => 400,
    "C" => 100,
    "XC" => 90,
    "L" => 50,
    "XL" => 40,
    "X" => 10,
    "IX" => 9,
    "V" => 5,
    "IV" => 4,
    "I" => 1,
  }
  output = ""

  romans.each do |roman, arabic|
    if num/arabic >= 1
      output << roman * (num/arabic)
      num = num % arabic
    end
  end
  output
end

# Drive code... this should print out trues.

puts to_roman(1) == "I"
puts to_roman(3) == "III"
puts to_roman(6) == "VI"
puts to_roman(14) == "XIV"
puts to_roman(25) == "XXV"
puts to_roman(1050) == "ML"
puts to_roman(90) == "XC"
puts to_roman(45) == "XLV"
puts to_roman(2999) == "MMCMXCIX"
puts to_roman(400) == "CD"




# TODO: what other cases could you add to ensure your to_roman method is working?