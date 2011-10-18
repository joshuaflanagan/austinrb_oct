
module RomanNumeral
  ORDER = { 1000 => "M",
            900 => "CM",
            500 => "D",
            100 => "C",
            90 => "XC",
            50 => "L",
            10 => "X",
            9 => "IX",
            5 => "V",
            4 => "IV",
            1 => "I"}


  def to_roman
    RomanNumeral.convert_numeric_to_roman self
  end

  def self.convert_numeric_to_roman(number)
    output = ""
    ORDER.each do |key,value|
      # puts "key: #{key}: value: #{value}"
      times = number / key
      while number >= key
        number  = number - key
        output  = output + value
      end
    end
    output
  end
end

class Numeric
  include RomanNumeral
end

class RomanNumeralString
  attr_accessor :string

  def initialize(roman)
    self.string = roman
  end

  def to_i
    0
  end
end

class String
  def to_roman
    RomanNumeralString.new(self).to_i
  end
end
