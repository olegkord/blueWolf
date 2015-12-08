require_relative 'spec_helper'
require_relative '../array_test.rb'


describe TestArray do
  let (:my_array) {TestArray.new()}
  describe "#find_doop_arbitrary" do
    context "apply a smaller array to test proper function" do
      it "finds a solitary pair of integers in an array of size N" do
        array_test = [1,2,1,1,2]
        expect(my_array.find_doop_arbitrary(array_test)).to eq(2)
      end
    end

    context "input an array that contains an incorrect datatype" do
      it "evaluates the array until an incorrect value is read and returns false" do
        array_test = [1,2,1,1,'STRING']
        expect(my_array.find_doop_arbitrary(array_test)).to eq(false)
      end
    end

    context "input an array without any integer pairs" do
      it "evalues the array and returns false" do
        array_test = [1,2,3,4,5]
        expect(my_array.find_doop_arbitrary(array_test)).to eq(false)
      end
    end

    context "input a string to be tested" do
      it "evaluates the argument and returns false" do
        array_test = "I am not an array!"
        expect(my_array.find_doop_arbitrary(array_test)).to eq(false)
      end
    end

    context "input nil to be tested" do
      it "evalues the argument of nil and returns false" do
        array_test = nil
        expect(my_array.find_doop_arbitrary(array_test)).to eq(false)
      end
    end

    context "full scale test" do
      it "evalues the array and returns the single pair of numbers" do
        array_test = Array.new(1000000,1337)
        array_test[rand(1..500000)] = 2;
        array_test[rand(1..1000000)] = 2;
        expect(my_array.find_doop_arbitrary(array_test)).to eq(2)
      end
    end
  end
end
