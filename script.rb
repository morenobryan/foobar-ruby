x = ARGV[0].to_i
y = ARGV[1].to_i

if x < 1 || x > 10 || y < 1 || y > 10
  raise ArgumentError, 'Arguments can only be between 1 and 10'
end

(1..100).each do |number|
  output = ''

  if (number % x).zero?
    output << 'ItsMy'
  end

  if (number % y).zero?
    output << 'Cargo'
  end

  if output.empty?
    output = number
  end

  puts output
end
