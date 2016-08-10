y = 50

f = ->(x : Int32) { x + y }
puts f.call(100)

y = 30
puts f.call(100)
