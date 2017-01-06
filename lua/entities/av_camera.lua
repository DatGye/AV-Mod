AddCSLuaFile()

ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "Render Camera"
ENT.Spawnable = true
ENT.RenderGroup = RENDERGROUP_BOTH

if SERVER then
	
	function ENT:Initialize()
	
		self:SetModel("models/dav0r/camera.mdl")
		self:PhysicsInit(SOLID_VPHYSICS)
		self:SetMoveType(MOVETYPE_VPHYSICS)
		self:SetSolid(SOLID_VPHYSICS)
		
		local phys = self:GetPhysicsObject()
		
		if phys:IsValid() then
		
				phys:Wake()
				
		end
		
	end
	
end

if CLIENT then

	function ENT:Draw()
	
		self:DrawModel()
	
	end

end