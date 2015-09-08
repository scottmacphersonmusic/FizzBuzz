require 'spec_helper'
require 'arbitrary'

describe "arb_fizz" do
  it "can handle the standard" do
    fizz = arb_fizz(15, { 3 => "Fizz", 5 => "Buzz"})
    fizz[15].must_equal "FizzBuzz"
    fizz[5].must_equal  "Buzz"
    fizz[3].must_equal  "Fizz"
    fizz[8].must_equal  "8"
    fizz[0].must_equal  "0"
  end

  it "meets client specification" do
    fizz = arb_fizz(110, { 3 => "Fizz", 5 => "Buzz", 7 => "Sivv" })
    fizz[105].must_equal "FizzBuzzSivv"
    fizz[19].must_equal  "19"
    fizz[17].must_equal  "17"
    fizz[15].must_equal  "FizzBuzz"
    fizz[10].must_equal  "Buzz"
  end

  it "can handle much arbitrary input" do
    doge = arb_fizz(100, { 4 => "Such", 5 => "Very", 3 => "Joy",
                           7 => "Wow", 11 => "Amazement" })
    doge[99].must_equal "JoyAmazement"
    doge[55].must_equal "VeryAmazement"
    doge[60].must_equal "SuchVeryJoy"
    doge[47].must_equal "47"
    doge[21].must_equal "JoyWow"
    doge[20].must_equal "SuchVery"
    doge[7].must_equal  "Wow"
    doge[8].must_equal  "Such"
    doge[2].must_equal  "2"
  end
end
