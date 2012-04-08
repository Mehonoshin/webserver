require 'socket'
require './lib/worker'
require './lib/debugger'

PORT = 2000
ADDRESS = "127.0.0.1"

def greeting
  puts "My Webserver is Started!"
end

server = TCPServer.open(PORT)
greeting

loop do
  session = server.accept
  request = session.gets

  Debugger.log(request)
  result = Worker.new(request).prepare_body

  session.puts(result)
  session.close
end



