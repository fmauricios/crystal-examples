def fibonacci(n : Int32)
  if n < 3
    1
  else
    fibonacci(n - 1) + fibonacci(n - 2)
  end
end

time = Time.now

puts fibonacci(40)

puts "Time: #{Time.now - time}"
