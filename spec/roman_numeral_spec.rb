require_relative '../roman_numeral'
describe "RomanNumeral" do
  context "integers to string numberals" do
    it "should convert 1 to I" do
      1.to_roman.should == "I"
    end
  end
end
