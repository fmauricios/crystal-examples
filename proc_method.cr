def print_name
  "Mauricio"
end

proc = ->print_name
puts proc.call

def multiply_two(number)
  number * 2
end

m_proc = ->multiply_two(Int32)
puts m_proc.call(20)
