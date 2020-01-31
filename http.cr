require "./src/handler.cr"
require "http/server"

server = HTTP::Server.new([
  HTTP::GitHandler.new
])

address = server.bind_tcp 8080
puts "Listening on http://#{address}"
server.listen
