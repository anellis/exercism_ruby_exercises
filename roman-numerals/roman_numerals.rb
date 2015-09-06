class Fixnum

  ROMAN_MAP =
  {
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

  def to_roman
    integer = self
    result = ""
    ROMAN_MAP.keys.each do |num|
      while integer >= num
        integer -= num
        result << ROMAN_MAP[num]
      end
    end
    result
  end


end
