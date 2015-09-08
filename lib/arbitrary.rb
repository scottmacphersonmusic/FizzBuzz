def arb_fizz(limit, word_hash)
  numbers = (1..limit).to_a
  keys = word_hash.keys
  fizz = %w(0)
  numbers.each do |num|
    output = ""
    matches = keys.select { |key| num % key == 0 }
    if matches.any?
      matches.each { |match| output += word_hash[match] }
    else
      output += num.to_s
    end
    fizz << output
  end
  fizz
end
