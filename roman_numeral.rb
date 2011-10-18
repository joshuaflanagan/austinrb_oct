
module RomanNumeral
  ORDER = { 1000 => "M",
            500 => "D",
            100 => "C",
            50 => "L",
            10 => "X",
            5 => "V",
            1 => "I"}


  def to_roman
    RomanNumeral.convert_numeric_to_roman self
  end

  def self.convert_numeric_to_roman(number)
    output = ""
    ORDER.each do |key,value|
      # puts "key: #{key}: value: #{value}"
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
