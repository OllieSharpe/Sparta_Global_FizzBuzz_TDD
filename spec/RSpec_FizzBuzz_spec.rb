require 'spec_helper'

describe 'FizzBuzz' do
  before(:all) do
    @array = FizzBuzz.new(1,23)
  end
  it "should return true when a number is divisable by 3 and false otherwise" do
    expect(@array.divisable_by_3(9)).to eq(true)
    expect(@array.divisable_by_3(8)).to eq(false)
  end
  it "should return true when a number is divisable by 5 and false otherwise" do
    expect(@array.divisable_by_5(15)).to eq(true)
    expect(@array.divisable_by_5(14)).to eq(false)
  end
  it "should have the correct range" do
    expect(@array.range).to eq(22)
  end
  it "should return an array" do
    expect(@array.fizzBuzzArray).to be_an_instance_of(Array)
  end
  it "should return an array of length equal to the range" do
    expect(@array.fizzBuzzArray.length).to eq(@array.range + 1)
  end
  it "should return the desired order for the given example" do
    expect(@array.fizzBuzzArray[0..14]).to eq([1,2,'Fizz',4,'Buzz','Fizz',7,8,'Fizz','Buzz',11,'Fizz',13,14,'FizzBuzz'])
  end
end
