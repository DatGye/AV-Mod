--[[
AV Mod (Ver. 0.0.1)
Author: DatGye (Wyatt Phillips)

Copyright 2016 Rogavox Development

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
]]--

-- lua script handler (selects lua scripts to be sent off to client)

if (SERVER) then

	-- send scripts to client (entities are self called)
	AddCSLuaFile()
	AddCSLuaFile("av/console.lua")
	AddCSLuaFile("av/shared.lua")
	AddCSLuaFile("av/cl_init.lua")
	
end

-- run shared scripts
include("av/shared.lua")

if (SERVER) then

	-- run serverside scripts
	include("av/init.lua")
	
end

if (CLIENT) then

	-- run clientside scripts
	include("av/cl_init.lua")
	
end