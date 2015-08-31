# FizzBuzz

The fizzbuzz function takes two arguments, the first and last numbers
for which you'd like to determine fizzbuzzery.

Plug your own numbers into the final line of fizzbuzz.rb, for example:

`fizzbuzz(33, 77)`

Run your updated file from the command line:

`ruby fizzbuzz.rb`

One line will print to the console for each number in the range given, declaring whether that number is Fizzy, Buzzy, FizzBuzzful or just an ordinary number.

**Note:** *the second number given as an argument to `fizzbuzz()` must
  be larger than the first, as this implementation uses a range object
  which evaluates to `nil` if that pattern is not followed.*

## Approach

A variable `num_array` is assigned by converting a range object (using the given arguments as endpoints) into an array.  For each item in `num_array` an fresh `output` variable is assigned to an empty string.  If the number isn't divisible by 3 or 5 a string version of the number will be concatenated onto `output`.  If the number is divisible by 3 "Fizz" is added and "Buzz" is added for numbers divisible by 5. The last line of the `each` block prints `output` to the console.

This solution was inspired by the in-class approach of Ronald Kinch
and Matt Yang.
