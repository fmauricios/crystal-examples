# Array of String

array_of_string = %w(mauricio serna florez crystal lang ruby)
pp array_of_string

# Array of Symbols

array_of_symbol = %i(symbol1 crystal rails)
pp array_of_symbol

# Array of Ints

array_of_int = [1, 2, 3, 4] of Int32
pp array_of_int

# Multivalue array

multivalue_array = [1, 2, "Mauricio"] of (Int32 | String)
pp multivalue_array
