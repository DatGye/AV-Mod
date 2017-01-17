--[[
AV Mod (Ver. 0.0.0)
Author: DatGye (Wyatt Phillips)

Copyright 2017 Rogavox Development

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

-- lua script handler (sets files to be run by client and server)

if (SERVER) then
	-- send scripts to client
	AddCSLuaFile()
	
	-- run serverside scripts
	
end

if (CLIENT) then
	-- run clientside scripts
	
end

-- run shared scripts
