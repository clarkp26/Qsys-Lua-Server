
local socket = require("socket")
socket.ReadTimeout = 5
socket.WriteTimeout = 5
local server = assert(socket.bind("127.0.0.1", 90))
-- master:bind("127.0.0.1", 80)
-- local server = socket.bind("192.168.1.4", 90)
-- local ssh = socket.bind("127.0.0.1", 90,"user","pass")

local ip, port = server:getsockname()
print(ip .. " " .. port)

while 1 do
  
  -- local client = master:listen()
  local client = server:accept()
  print("Client Accepted")
  client:settimeout(3)
  local line = client:receive()
  print(line)
  client:send("Message was Delivered\n")
  client:close()
end