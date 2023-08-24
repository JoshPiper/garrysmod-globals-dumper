print("START GLOBALS BLOCK")

for k, v in pairs(_G) do
    if not isstring(k) then
        continue
    end

    print(k)
end

print("END GLOBALS BLOCK")

TOOL.Category = "Test"
TOOL.Name = "Test"
TOOL.Command = nil
TOOL.ConfigName = ""
