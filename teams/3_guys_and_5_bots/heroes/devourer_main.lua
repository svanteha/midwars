local _G = getfenv(0)
local object = _G.object

object.myName = object:GetName()

object.bRunLogic = true
object.bRunBehaviors = true
object.bUpdates = true
object.bUseShop = true

object.bRunCommands = true
object.bMoveCommands = true
object.bAttackCommands = true
object.bAbilityCommands = true
object.bOtherCommands = true

object.bReportBehavior = false
object.bDebugUtility = false
object.bDebugExecute = false

object.logger = {}
object.logger.bWriteLog = false
object.logger.bVerboseLog = false

object.core = {}
object.eventsLib = {}
object.metadata = {}
object.behaviorLib = {}
object.skills = {}

runfile "bots/core.lua"
runfile "bots/botbraincore.lua"
runfile "bots/eventsLib.lua"
runfile "bots/metadata.lua"
runfile "bots/behaviorLib.lua"

local core, eventsLib, behaviorLib, metadata, skills = object.core, object.eventsLib, object.behaviorLib, object.metadata, object.skills

local print, ipairs, pairs, string, table, next, type, tinsert, tremove, tsort, format, tostring, tonumber, strfind, strsub
  = _G.print, _G.ipairs, _G.pairs, _G.string, _G.table, _G.next, _G.type, _G.table.insert, _G.table.remove, _G.table.sort, _G.string.format, _G.tostring, _G.tonumber, _G.string.find, _G.string.sub
local ceil, floor, pi, tan, atan, atan2, abs, cos, sin, acos, max, random
  = _G.math.ceil, _G.math.floor, _G.math.pi, _G.math.tan, _G.math.atan, _G.math.atan2, _G.math.abs, _G.math.cos, _G.math.sin, _G.math.acos, _G.math.max, _G.math.random

local BotEcho, VerboseLog, BotLog = core.BotEcho, core.VerboseLog, core.BotLog
local Clamp = core.Clamp

BotEcho('loading devourer_main...')

object.heroName = 'Hero_Devourer'

--------------------------------
-- Lanes
--------------------------------
core.tLanePreferences = {Jungle = 0, Mid = 5, ShortSolo = 0, LongSolo = 0, ShortSupport = 0, LongSupport = 0, ShortCarry = 0, LongCarry = 0}

--------------------------------
-- Skills
--------------------------------
-- table listing desired skillbuild. 0=Q(hook), 1=W(rot), 2=E(passive), 3=R(ulti), 4=AttributeBoost
object.tSkills = {
0, 1, 0, 1, 0,
3, 0, 1, 1, 2,
3, 2, 2, 2, 4,
3, 4, 4, 4, 4,
4, 4, 4, 4, 4,
}

local bSkillsValid = false
function object:SkillBuild()

  local unitSelf = self.core.unitSelf

  if not bSkillsValid then
    skills.abilEmeraldLightning = unitSelf:GetAbility(0)
    skills.abilPowerThrow = unitSelf:GetAbility(1)
    skills.abilDejaVu = unitSelf:GetAbility(2)
    skills.abilEmeraldRed = unitSelf:GetAbility(3)
    
    if skills.abilEmeraldLightning and skills.abilPowerThrow and skills.abilDejaVu and skills.abilEmeraldRed then
      bSkillsValid = true
    else
      return
    end
  end
  
  if unitSelf:GetAbilityPointsAvailable() <= 0 then
        return
    end
   
    local nlev = unitSelf:GetLevel()
    local nlevpts = unitSelf:GetAbilityPointsAvailable()
    for i = nlev, nlev+nlevpts do
        unitSelf:GetAbility( object.tSkills[i] ):LevelUp()
    end
end

------------------------------------------------------
--            onthink override                      --
-- Called every bot tick, custom onthink code here  --
------------------------------------------------------
-- @param: tGameVariables
-- @return: none
function object:onthinkOverride(tGameVariables)
  self:onthinkOld(tGameVariables)

  -- custom code here
end
object.onthinkOld = object.onthink
object.onthink = object.onthinkOverride

----------------------------------------------
--            oncombatevent override        --
-- use to check for infilictors (fe. buffs) --
----------------------------------------------
-- @param: eventdata
-- @return: none
function object:oncombateventOverride(EventData)
  self:oncombateventOld(EventData)

  -- custom code here
end
-- override combat event trigger function.
object.oncombateventOld = object.oncombatevent
object.oncombatevent = object.oncombateventOverride

--items
behaviorLib.StartingItems = {"Item_IronBuckler", "Item_RunesOfTheBlight", "Item_ManaBattery"}
behaviorLib.LaneItems =
        {"Item_Marchers","Item_PowerSupply", "Item_MysticVestments", "Item_Shield2"} -- Shield2 is HotBL
behaviorLib.MidItems =
        {"Item_EnhancedMarchers", "Item_PortalKey"}
behaviorLib.LateItems =
        {"Item_Excruciator", "Item_SolsBulwark", "Item_DaemonicBreastplate", "Item_Intelligence7", "Item_HealthMana2", "Item_BehemothsHeart"} --Excruciator is Barbed Armor, Item_Intelligence7 is staff, Item_HealthMana2 is icon

BotEcho('finished loading devourer_main')
