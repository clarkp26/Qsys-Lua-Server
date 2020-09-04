local host, port = "127.0.0.1", 90
local socket = require("socket")
local tcp = assert(socket.tcp())

tcp:connect(host, port);
--note the newline below

tcp:send("hello world\n");
local ServerMessage = tcp:receive()
print(ServerMessage)
-- while true do
--     print("Loop")
--     local s, status, partial = tcp:receive()
--     print(s or partial)
--     if status == "closed" then break end
-- end
tcp:close()