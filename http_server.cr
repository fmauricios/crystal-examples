require "http/server"

server = HTTP::Server.new(4000) do |context|
  context.response.content_type = "text/plain"
  context.response.print "Request path: #{context.request.path}"
end

puts "Listening on http://0.0.0.0:4000"
server.listen
