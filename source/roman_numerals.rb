# Passed in an Arabic numeral => return a Roman numeral.
# Store all Roman numerals in a hash with the Arabic numerals as their pairs.
# Given a specific Arabic numeral, iterate through the hash from
# highest to lowest subtracting values as it iterates.
# Append values to an array and convert it to a string for output.
def to_roman(number)
  solution = ""
  numerals = { 1000 => "M",
               500 => "D",
               100 => "C",
               50 => "L",
               10 => "X",
               5 => "V",
               1 => "I" }

  numerals.each do |arabic, roman|
    while arabic <= number
      solution << roman
      number -= arabic
    end
  end
  p solution
end

# Drive code... this should print out trues.

puts to_roman(1) == "I"
puts to_roman(3) == "III"
puts to_roman(6) == "VI"
puts to_roman(9) == "VIIII"
puts to_roman(1646) == "MDCXXXXVI"

# TODO: what other cases could you add to ensure your to_roman method is working?