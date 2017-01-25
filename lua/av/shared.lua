av = {} -- must always be called before initializing additional scripts

-- create metadata table
_avmod = {}

_avmod.name = "AV-Mod"
_avmod.version = "0.0.1"
_avmod.developer = "Rogavox Development"

_avmod.authors = {

	["Lead Programmer"] = "DatGye (Wyatt Phillips)",
	["Entity Modeler"] = "Endless (Gregory Allen)"
	
}

-- load shared configuration
av.config = {}

-- initialize shared scripts
include("av/console.lua")