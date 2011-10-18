module RomanNumeral
  def to_roman
    RomanNumeral.convert_numeric_to_roman self
  end

  def self.convert_numeric_to_roman(number)
    "I"
  end
end

class Numeric
  include RomanNumeral
end
