#concatanate quotient times symbols to numerals string
# pass the modulus



def to_roman(num)
  thresholds = [1000 , 500, 100, 50, 10, 5, 1]
  symbols =    ["M", "D", "C", "L", "X", "V", "I"]
  numerals = ""
  thresholds.each_with_index do |x,idx|
   quotient =  (num / x)
   numerals.concat(symbols[idx] * quotient)
   num = num % x
  end
  numerals
end

# Drive code... this should print out trues.

puts to_roman(1) == "I"
puts to_roman(3) == "III"
puts to_roman(6) == "VI"

# TODO: what other cases could you add to ensure your to_roman method is working?


def to_new_roman(num)
  thresholds = [1000 , 500, 100, 50, 10, 5, 1]
  symbols =    ["M", "D", "C", "L", "X", "V", "I"]
  numerals = ""
  thresholds.each_with_index do |x,idx|
=begin
  #p num
  if idx.even? && x != 1
    if num / (x - thresholds[idx+2]) == 1 && num % (x - thresholds[idx+2]) < thresholds[idx+2]
      numerals.concat(symbols[idx+2])
      numerals.concat(symbols[idx])
      num = num % (x - thresholds[idx+2])
    end
  elsif idx.odd?
    if num / (x - thresholds[idx+1]) == 1 && num % (x - thresholds[idx+1]) < thresholds[idx+1]
      numerals.concat(symbols[idx+1])
      numerals.concat(symbols[idx])
      num = num % (x - thresholds[idx+1])
    end
  end
=end

    if idx.even? && x != 1
      threshold_remainder = thresholds[idx+2]
      remainder_symbol = symbols[idx+2]
    elsif idx.odd?
      threshold_remainder = thresholds[idx+1]
      remainder_symbol = symbols[idx+1]
    end

    if x != 1
      if num / (x - threshold_remainder) == 1 && num % (x - threshold_remainder) < threshold_remainder
        numerals.concat(remainder_symbol)
        numerals.concat(symbols[idx])
        num = num % (x - threshold_remainder)
      end
    end

    quotient =  (num / x)
    numerals.concat(symbols[idx] * quotient)
    num = num % x
  end
  numerals
end

puts "My totally sweet testing script"
puts ""
puts "input | expected | actual"
puts "------|----------|-------"
puts "4     | IV       | #{to_new_roman(4)}"
puts "9     | IX       | #{to_new_roman(9)}"
puts "13    | XIII     | #{to_new_roman(13)}"
puts "1453  | MCDLIII  | #{to_new_roman(1453)}"
puts "1646  | MDCXLVI  | #{to_new_roman(1646)}"