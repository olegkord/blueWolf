require_relative  'spec_helper'
require_relative '../string_test.rb'

describe TestString do
  let (:my_test) {TestString.new()}

  describe "#first_no_repeat" do
    context "apply string from assignment statement" do
      it "returns the first non-repeating char in the string" do
        string_test = "DEFD"
        expect(my_test.first_no_repeat(string_test)).to eq("E")
      end
    end

    context "apply a number as argument" do
      it "returns false because of invalid argument" do
        string_test = 30
        expect(my_test.first_no_repeat(string_test)).to eq(false)
      end
    end

    context "apply a string with no single-repeating char" do
      it "returns false because the first non-repeating char can't be found" do
        string_test = "AAFFDDGG"
        expect(my_test.first_no_repeat(string_test)).to eq(false)
      end
    end

    context "apply nil as argument" do
      it "returns false because nil is not a String class" do
        string_test = nil
        expect(my_test.first_no_repeat(string_test)).to eq(false)
      end
    end
  end
end
