def to_roman(num)
  # Your code here
  last_digit = num.to_s.split().last.to_i
  roman_numeral = []
  numeral_values = {1 => "I", 5 => "V", 10 => "X", 50 => "L", 100 => "C", 500 => "D", 1000=> "M"}

  numeral_values.keys.reverse.each do |x|
    letter_count = num / x
    roman_numeral += Array.new(letter_count, numeral_values[x])
    num = num % x
  end

  if last_digit == 9
    roman_numeral.pop(5)
    roman_numeral << "IX"
  elsif last_digit == 4
    roman_numeral.pop(4)
    roman_numeral << "IV"
  end


  roman_numeral.join
end

# Drive code... this should print out trues.

puts to_roman(1) == "I"
puts to_roman(3) == "III"
puts to_roman(6) == "VI"
puts to_roman(1500) == "MD"
puts to_roman(4) == "IV"

# TODO: what other cases could you add to ensure your to_roman method is working?