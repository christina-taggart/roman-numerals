def to_roman(num)
  roman_final = ""
  romans = { 1 => "I"
             }
   romans.each do |arabic, roman|
      # if num == arabic
        roman_final = roman * num
      # end
   end
   roman_final
end

# Drive code... this should print out trues.

puts to_roman(1) == "I"
puts to_roman(2) == "II"
puts to_roman(3) == "III"
puts to_roman(5) == "V"
# puts to_roman(6) == "VI"

# TODO: what other cases could you add to ensure your to_roman method is working?