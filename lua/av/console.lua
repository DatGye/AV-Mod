-- must initialize and configure "_avmod" table before including


function av.PrintInfo(str)

	local prefix = ""
	local name = _avmod.name
	local ver = _avmod.version
	
	if (CLIENT) then prefix = "[CLIENT]" end
	
	print(prefix .. " " .. name .. " (Version " .. ver .. "): " .. str)
	
end

function av.PrintError(str)

	printInfo("ERROR: " .. str)
	
end