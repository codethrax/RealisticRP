AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")
include("player_class/player_realisticrp.lua")

DEFINE_BASECLASS("gamemode_base")

function GM:PlayerSpawn(ply)
	player_manager.SetPlayerClass(ply, "player_realisticrp")
	BaseClass.PlayerSpawn(self, ply)
end