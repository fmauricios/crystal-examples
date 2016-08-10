def factorial(n)
  if n < 2
    1
  else
    n * factorial(n - 1)
  end
end

time = Time.now

pp factorial 10

puts "Time: #{Time.now - time}"
