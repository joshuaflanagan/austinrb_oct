require_relative '../roman_numeral'
describe "RomanNumeral" do
  context "integers to string numberals" do
    it "should convert 1 to I" do
      1.to_roman.should == "I"
    end
    
    it "should convert 10 to X" do
      10.to_roman.should == "X"
    end
    
    it "should convert 7 to VII" do
      7.to_roman.should == "VII"
    end
    
    it "should convert 4 to IV" do
      4.to_roman.should == "IV"
    end
    
    it "should convert 999 to CMXCIX" do
      999.to_roman.should == "CMXCIX"
    end

    it "should convert 1954 to MCMLIV" do
      1954.to_roman.should == "MCMLIV"
    end
  end
  describe "roman numerals to integers" do
    it { "I".to_roman.should == 1 }
  end
end
