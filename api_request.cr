require "http/client"
require "json"

class ApiRequest
  def get_message(id)
    response = HTTP::Client.get "http://api.icndb.com/jokes/#{id}"
    body = JSON.parse(response.body)["value"]["joke"]
    message = "Joke number #{id} : #{body}"
  end
end

message = ApiRequest.new
random_id = Random.rand(584)
puts message.get_message(random_id)
