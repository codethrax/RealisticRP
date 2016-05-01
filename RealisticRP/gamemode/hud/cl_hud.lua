--
-- Create all HUD variables.
--
local Heart = Material("icon16/heart.png")

--
-- Create the font used throughout the HUD.
--
surface.CreateFont("HUDFont", {
	font = "Default",
	size = 15,
	weight = 1000
})

--
-- Take all of the default HUD elements below and hide them.
--
local HiddenElements = {
	["CHudHealth"] = true,
	["CHudBattery"] = true,
	["CHudSuitPower"] = true
}

local function HideHUD(name)
	if (HiddenElements[name]) then return false end
end
hook.Add("HUDShouldDraw", "HideHUD", HideHUD)

--
-- Add custom things to the HUD.
--
local function DrawHUD()
	-- Bare
	surface.SetDrawColor(40, 40, 40, 200)
	surface.DrawRect(0, 0, ScrW(), 25)
	surface.SetDrawColor(100, 100, 100, 200)
	surface.DrawOutlinedRect(0, 0, ScrW(), 25)
	surface.DrawOutlinedRect(0, 0, 65, 25)
	-- Health
	surface.SetFont("HUDFont")
	surface.SetTextColor(200, 200, 200, 255)
	surface.SetTextPos(22, 5)
	surface.DrawText(LocalPlayer():Health() .. "%")
	surface.SetDrawColor(255, 255, 255, 255)
	surface.SetMaterial(Heart)
	surface.DrawTexturedRect(5, 5, 16, 16)
end
hook.Add("HUDPaint", "DrawMyHUD", DrawHUD)