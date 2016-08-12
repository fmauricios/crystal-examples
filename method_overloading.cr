def sum(x : String, y : String)
  sum x.to_i, y.to_i
end

def sum(x : Int32)
  x
end

def sum(x, y)
  x + y
end

pp sum("1", "2")
pp sum(10)
pp sum(10, 10)
