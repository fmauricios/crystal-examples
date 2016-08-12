# Example 1

lib LibC
  fun atoi(str : UInt8*) : Int32
end

# Atoi converts a string in a Integer

p LibC.atoi("28").class

# Example 2

@[Link("readline")]
lib LibReadline
  fun readline(prompt : UInt8*) : Pointer(UInt8)
end

line = LibReadline.readline("What's your name?\n")
p String.new(line)
