class RomanNumeralConverter
  ROMAN_NUMERALS = {
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

  def self.convert_int_to_roman_numeral(num)
    converted = ""
    ROMAN_NUMERALS.each do |value, letter|
      converted += letter * (num / value)
      num %= value
    end
    converted
  end
end
