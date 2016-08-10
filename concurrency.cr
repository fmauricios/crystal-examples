# Example 1

require "http"

spawn do
  HTTP::Client.get "http://curry-on.org"
end

# Example 2

ch = Channel(Int32).new

spawn do
  puts ch.receive
end

ch.send 42
