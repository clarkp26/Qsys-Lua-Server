# Qsys-Lua-Server
String would only send correctly when '\n' was included in the String being sent.
eg.
tcp:Write("Message From Qsys")  returns nil on recieving side
tcp:Write("Message From Qsys\n") returns "Message From Qsys" on recieving side
