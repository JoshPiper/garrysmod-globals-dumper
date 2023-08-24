hook.Add("PostGamemodeLoaded", "DumpGlobals", function()
	print("hello")

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
		timer.Simple(0, engine.CloseServer)
		--timer.Simple(1, engine.CloseServer)
		--timer.Simple(2, engine.CloseServer)
		--engine.CloseServer()
		--engine.CloseServer()
		--engine.CloseServer()
		--engine.CloseServer()
		--engine.CloseServer()
		--engine.CloseServer()
	end
end)

--timer.Simple(10, function()
--	print("timer")
--	engine.CloseServer()
--end)

