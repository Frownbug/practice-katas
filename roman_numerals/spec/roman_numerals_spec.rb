require "spec_helper"
require "roman_numerals.rb"

describe RomanNumeralConverter do
  describe ".convert_int_to_roman_numeral" do
    it "returns the correct roman numeral for 1-3" do
      expect(described_class.convert_int_to_roman_numeral(1)).to eq("I")
      expect(described_class.convert_int_to_roman_numeral(2)).to eq("II")
      expect(described_class.convert_int_to_roman_numeral(3)).to eq("III")
    end

    it "returns the correct roman numeral for 4-8" do
      expect(described_class.convert_int_to_roman_numeral(4)).to eq("IV")
      expect(described_class.convert_int_to_roman_numeral(5)).to eq("V")
      expect(described_class.convert_int_to_roman_numeral(6)).to eq("VI")
      expect(described_class.convert_int_to_roman_numeral(7)).to eq("VII")
      expect(described_class.convert_int_to_roman_numeral(8)).to eq("VIII")
    end

    it "returns the correct roman numeral for 9" do
      expect(described_class.convert_int_to_roman_numeral(9)).to eq("IX")
    end

    it "returns the correct roman numeral for 10-39" do
      expect(described_class.convert_int_to_roman_numeral(10)).to eq("X")
      expect(described_class.convert_int_to_roman_numeral(13)).to eq("XIII")
      expect(described_class.convert_int_to_roman_numeral(14)).to eq("XIV")
      expect(described_class.convert_int_to_roman_numeral(15)).to eq("XV")
      expect(described_class.convert_int_to_roman_numeral(20)).to eq("XX")
      expect(described_class.convert_int_to_roman_numeral(39)).to eq("XXXIX")
    end

    it "returns the correct roman numeral for 40-49" do
      expect(described_class.convert_int_to_roman_numeral(40)).to eq("XL")
      expect(described_class.convert_int_to_roman_numeral(46)).to eq("XLVI")
      expect(described_class.convert_int_to_roman_numeral(49)).to eq("XLIX")
    end

    it "returns the correct roman numeral for 50-1000" do
      expect(described_class.convert_int_to_roman_numeral(50)).to eq("L")
      expect(described_class.convert_int_to_roman_numeral(99)).to eq("XCIX")
      expect(described_class.convert_int_to_roman_numeral(100)).to eq("C")
      expect(described_class.convert_int_to_roman_numeral(452)).to eq("CDLII")
      expect(described_class.convert_int_to_roman_numeral(500)).to eq("D")
      expect(described_class.convert_int_to_roman_numeral(996)).to eq("CMXCVI")
      expect(described_class.convert_int_to_roman_numeral(1000)).to eq("M")
    end

  end
end
