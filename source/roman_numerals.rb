#Matt, Spencer, and Christina worked together on this!

def to_roman(num)
  roman_numeral = ""
  previous_key = ""
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
    if num/v == 4
      roman_numeral += k + previous_key
      previous_key = k
    else
      roman_numeral += (k*(num/v))
      num = num%v
      previous_key = k
    end
  else
    roman_numeral
    previous_key = k
   end
  end
  roman_numeral
end

# Drive code... this should print out trues.

puts to_roman(4) == "IV"
puts to_roman(1) == "I"
puts to_roman(3) == "III"
puts to_roman(6) == "VI"

# TODO: what other cases could you add to ensure your to_roman method is working?