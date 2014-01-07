def to_roman(num)
  roman_vals = {"M" => 1000, "D" => 500,
               "C" => 100, "L" => 50,
               "X" => 10, "V" => 5, "I" => 1}
  converted = ""
  roman_vals.each do |key, val|
    converted << key * (num / val)
    num = num % val
  end
  converted
end

# Drive code... this should print out trues.

puts to_roman(1) == "I"
puts to_roman(3) == "III"
puts to_roman(6) == "VI"

# TODO: what other cases could you add to ensure your to_roman method is working?

puts to_roman(10) == "X"
puts to_roman(50) == "L"
puts to_roman(100) == "C"
puts to_roman(2654) == "MMDCLIIII"
