def validate(i)
  if i > 100
    # Get the value of Int32
    i
  else
    # Get the value of String
    "String value"
  end
end

puts "---------------------------------------------"

int_value = validate(200)
pp int_value.class
pp typeof(int_value)

puts "---------------------------------------------"

string_value = validate(10)
pp string_value.class
pp typeof(string_value)

puts "---------------------------------------------"
