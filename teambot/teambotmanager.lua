-- TeambotManager: Midwars edition
local _G = getfenv(0)
local teambot = _G.object

local legionTeamCvar = Cvar.GetCvar("teambotmanager_legion")
local legionTeam = nil
local hellbourneTeamCvar = Cvar.GetCvar("teambotmanager_hellbourne")
local hellbourneTeam = nil

if legionTeamCvar then
  legionTeam = legionTeamCvar:GetString()
end
if hellbourneTeamCvar then
  hellbourneTeam = hellbourneTeamCvar:GetString()
end

local function IsLegion()
  return teambot:GetTeam() == 1
end

local function TeamEcho(string)
  Echo("Team "..tostring(teambot:GetTeam())..": "..string)
end

local function RunTeam(teamName)
  if teamName and teamName ~= "" then
    TeamEcho("Loading teambot for "..teamName)
    runfile ("bots/teams/"..teamName.."/teambot.lua")
  else
    TeamEcho("Loading default teambot")
    runfile "bots/teambot/teambotbrain.lua"
  end
end

if IsLegion() then
  RunTeam(legionTeam)
else
  RunTeam(hellbourneTeam)
end
