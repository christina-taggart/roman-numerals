def to_roman(num)
  length = num.to_s.length

  thousands = 0
  hundreds = 0
  tens = 0
  ones = 0

  until length == 0
    if length == 4 # thousands
      thousands = num / 1000
      num = num % 1000
    elsif length == 3 # hundreds
      hundreds = num / 100
      num = num % 100
    elsif length == 2 # tens
      tens = num / 10
      num = num % 10
    elsif length == 1 # ones
      ones = num
      num = num % 1
    end
    length -= 1
  end

  # old school roman numeral code
  five_hundreds = 0
  fifties = 0
  fives = 0
  if hundreds >= 5
    hundreds -= 5
    five_hundreds = 1
  end
  if tens >= 5
    tens -= 5
    fifties = 1
  end
  if ones >= 5
    ones -= 5
    fives = 1
  end

  hundreds -= 5 if hundreds >= 5
  hundreds -= 5 if hundreds >= 5
  old_school_roman_numeral = "M" * thousands + "D" * five_hundreds + "C" * hundreds + "L" * fifties + "X" * tens + "V" * fives + "I" * ones
  
end

# Drive code... this should print out trues.

puts to_roman(1) == "I"
puts to_roman(3) == "III"
puts to_roman(4) == "IIII"
puts to_roman(6) == "VI"
puts to_roman(9) == "VIIII"
puts to_roman(1646) == "MDCXXXXVI"

# TODO: what other cases could you add to ensure your to_roman method is working?