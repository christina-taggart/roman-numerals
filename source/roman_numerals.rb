def to_roman(num)
  roman_num = String.new

  if num >= 1000
    m_count = num / 1000
    num = num % 1000
    roman_num += "M" * m_count
  end

  if num >= 900
    cm_count = num / 900
    num = num % 900
    roman_num += "CM" * cm_count
  end

  if num >= 500
    d_count = num / 500
    num = num % 500
    roman_num += "D" * d_count
  end

  if num >= 400
    cd_count = num / 400
    num = num % 400
    roman_num += "CD" * cd_count
  end

  if num >= 100
    c_count = num / 100
    num = num % 100
    roman_num += "C" * c_count
  end

  if num >= 90
    xc_count = num / 90
    num = num % 90
    roman_num += "XC" * xc_count
  end

  if num >= 50
    l_count = num / 50
    num = num % 50
    roman_num += "L" * l_count
  end

  if num >= 40
    xl_count = num / 40
    num = num % 40
    roman_num += "XL" * xl_count
  end

  if num >= 10
    x_count = num / 10
    num = num % 10
    roman_num += "X" * x_count
  end

  if num >= 9
    ix_count = num / 9
    num = num % 9
    roman_num += "IX" * ix_count
  end

  if num >= 5
    v_count = num / 5
    num = num % 5
    roman_num += "V" * v_count
  end

  if num >= 4
    iv_count = num / 4
    num = num % 4
    roman_num += "IV" * iv_count
  end

  if num >= 1
    i_count = num / 1
    num = num % 1
    roman_num += "I" * i_count
  end

  roman_num
end

# Drive code... this should print out trues.

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