def fizzbuzz(first, last)
  num_array = (first..last).to_a
  num_array.each do |num|
    output = ""
    if (num % 3 != 0) && (num % 5 != 0)
      output += num.to_s
    end
    output += "Fizz" if num % 3 == 0
    output += "Buzz" if num % 5 == 0
    puts output
  end
end

fizzbuzz(2, 17)
