print("START GLOBALS BLOCK")

for k, v in pairs(_G) do
    if not isstring(k) then
        continue
    end

    print(k)
end

print("END GLOBALS BLOCK")

ENT.Type = "anim"
ENT.Base = "base_gmodentity"

ENT.PrintName		= "Test"
ENT.Author			= ""
ENT.Contact			= ""
ENT.Purpose			= ""
ENT.Instructions	= ""
