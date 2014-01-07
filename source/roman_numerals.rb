def to_roman(num)
  roman_numeral = ""
  arabic_numerals = {
    "M" => 1000,
    "D" => 500,
    "C" => 100,
    "L" => 50,
    "X" => 10,
    "V" => 5,
    "I" => 1}
  arabic_numerals.each do |k, v|
  if num/v > 0
    roman_numeral += (k*(num/v))
    num = num%v
   else
    roman_numeral
   end
  end
  roman_numeral
end

# Drive code... this should print out trues.

puts to_roman(1) == "I"
puts to_roman(3) == "III"
puts to_roman(6) == "VI"

# TODO: what other cases could you add to ensure your to_roman method is working?