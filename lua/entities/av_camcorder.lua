AddCSLuaFile()

ENT.Type = "anim"
ENT.Base = "base_gmodentity"
ENT.PrintName = "Camcorder"
ENT.Author = "DatGye (Wyatt Phillips)"
ENT.Contact = "datscigye@gmail.com"
ENT.Spawnable = true

function ENT:Initialize()

	if (SERVER) then
		
		self:SetModel("models/dav0r/camera.mdl")
		self:PhysicsInit(SOLID_VPHYSICS)
		self:SetMoveType(MOVETYPE_VPHYSICS)
		self:SetSolid(SOLID_VPHYSICS)
		
		local phys = self:GetPhysicsObject()
		
		if phys:IsValid() then
		
			phys:Wake()
			
		end
		
		self:SetUseType(3)
		self.trigger_use = false
		
	end
	
end	

function ENT:Use(activator)

	if not self.trigger_use then
	
		activator:SetViewEntity(self)
		self.trigger_use = true
		
	else 
	
		activator:SetViewEntity(ply)
		self.trigger_use = false
	end
	
end