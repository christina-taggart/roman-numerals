def to_roman(num)
  roman_numeral = String.new
  arabic_roman_pairs = {
    1000 => "M",
    900 => "CM",
    500 => "D",
    400 => "CD",
    100 => "C",
    90 => "XC",
    50 => "L",
    40 => "XL",
    10 => "X",
    9 => "IX",
    5 => "V",
    4 => "IV",
    1 => "I"
  }

  arabic_roman_pairs.each do |arabic, roman|
    roman_count = num / arabic
    roman_numeral += roman * roman_count
    num = num % arabic
  end

  roman_numeral
end


#-----DRIVERS-----

puts to_roman(1) == "I"
puts to_roman(3) == "III"
puts to_roman(6) == "VI"

puts "My totally sweet testing script"
puts ""
puts "input | expected | actual"
puts "------|----------|-------"
puts "4     | IV       | #{to_roman(4)}"
puts "9     | IX       | #{to_roman(9)}"
puts "13    | XIII     | #{to_roman(13)}"
puts "1453  | MCDLIII  | #{to_roman(1453)}"
puts "1646  | MDCXLVI  | #{to_roman(1646)}"
puts "1940  | MCMLXL   | #{to_roman(1940)}"