def arb_fizz(limit, name_hash)
  numbers = (2..limit).to_a
  keys = name_hash.keys
  fizz = ["0", "1"]
  numbers.each do |num|
    output = ""
    matches = keys.select { |key| num % key == 0 }
    unless matches.empty?
      matches.each { |match| output += name_hash[match] }
    else
      output += num.to_s
    end
    fizz << output
  end
  fizz
end
