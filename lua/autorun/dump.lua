local hand = file.Open("globals-dump.txt", "w", "DATA")

local manual = {
	TOOL = {true, true} -- CL, SV
}

for k, v in pairs(_G) do
	if not isstring(k) then continue end

	hand:Write(k)
	hand:Write("\n")
	hand:Flush()
end
for k, v in pairs(manual) do
	if (CLIENT and v[1]) or (SERVER and v[2]) then
		hand:Write(k)
		hand:Write("\n")
		hand:Flush()
	end
end

hand:Close()

if engine and engine.CloseServer then
	engine.CloseServer()
end
