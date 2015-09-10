# FizzBuzz
By [Scott Macpherson](https://github.com/scottmacphersonmusic)

## Description

This repository provides two different ways to calculate solutions for the classic FizzBuzz problem.

## Usage
#### 1) `fizzbuzz(first, last)`

Call with a starting and ending number:

`fizzbuzz 33, 77`


One line will print a line to the console for each number in the range given, declaring whether that number is Fizzy, Buzzy, FizzBuzzful or just an ordinary number.

**Note:** *the second number given as an argument to `fizzbuzz()` must
  be larger than the first, as this implementation uses a range object
  which evaluates to `nil` if that pattern is not followed.*

###### Approach

A variable `num_array` is assigned by converting a range object (using the given arguments as endpoints) into an array.  For each item in `num_array` an fresh `output` variable is assigned to an empty string.  If the number isn't divisible by 3 or 5 a string version of the number will be concatenated onto `output`.  If the number is divisible by 3 "Fizz" is added and "Buzz" is added for numbers divisible by 5. The last line of the `each` block prints `output` to the console.

#### 2) `arb_fizz(limit, word_hash)`
Processes a range of numbers from 0 to `limit` in a fizzbuzz-like way with arbitrary word/number associations and returns an array of strings.

`word_hash` keys are integers and their values are strings:

`words = { 3 => 'Such', 5 => 'Very', 7 => 'Wow', 11 => 'Shiba'}`

`doge = arb_fizz 50_000, words`

*=> [0, 1, 2, Such, 4, Very, Such, Wow, 8, Such, Very, Shiba ...]*

To check a value just index into the array:

`doge[55]` *=> VeryShiba*

Print one value per line to the console as in `fizzbuzz`:

`puts doge`

###### Approach
`arb_fizz` makes the assumption that you will be setting `limit` at a high number and opts to return an array for manageability.  It also makes the assumption that you won't assign 0 *(zero)* to any words in `word_hash` because zero divided by anything is 0, which would override every value in the return array - why would you need to calculate that?!

We start with an array called `fizz` which only contains one item, '0'.  For each number from 1 to `limit` a fresh variable `output` is assigned to an empty string.  Next we create an array of any the keys from `word_hash` (which are `Fixnum`s) for which the number divided by a key has a remainder of 0 and assign that to the variable `matches`. For each item in `matches` concatenate `word_hash[match]` onto `output`. If there arent any matches, concatenate the string version of the number onto output.  The last step in the loop is to push whatever the value of `output` is onto our original`fizz` array.  Once the loop has run for every number return `fizz`.
