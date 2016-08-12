def fibonacci(n : Int32)
  return n if n <= 2
  fibonacci(n - 1) + fibonacci(n - 2)
end

time = Time.now

puts fibonacci(40)

puts "Time: #{Time.now - time}"
