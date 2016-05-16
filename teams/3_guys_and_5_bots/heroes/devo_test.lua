<<<<<<< HEAD
=======
--Devourer Bot v 1.1
--Coded by `swagggmaster`

>>>>>>> 098185af75c20e1cb66282c21fae60d56173e377
local _G = getfenv(0)
local object = _G.object

object.myName = object:GetName()

<<<<<<< HEAD
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
=======
object.bRunLogic                = true
object.bRunBehaviors    = true
object.bUpdates                 = true
object.bUseShop                 = true

object.bRunCommands     = true
object.bMoveCommands    = true
object.bAttackCommands  = true
object.bAbilityCommands = true
object.bOtherCommands   = true

object.bReportBehavior = true
object.bDebugUtility = true
object.bDebugExecute = true
>>>>>>> 098185af75c20e1cb66282c21fae60d56173e377

object.logger = {}
object.logger.bWriteLog = false
object.logger.bVerboseLog = false

<<<<<<< HEAD
object.core = {}
object.eventsLib = {}
object.metadata = {}
object.behaviorLib = {}
object.skills = {}
=======
object.core             = {}
object.eventsLib        = {}
object.metadata         = {}
object.behaviorLib      = {}
object.skills           = {}
>>>>>>> 098185af75c20e1cb66282c21fae60d56173e377

runfile "bots/core.lua"
runfile "bots/botbraincore.lua"
runfile "bots/eventsLib.lua"
runfile "bots/metadata.lua"
runfile "bots/behaviorLib.lua"

local core, eventsLib, behaviorLib, metadata, skills = object.core, object.eventsLib, object.behaviorLib, object.metadata, object.skills
<<<<<<< HEAD

local print, ipairs, pairs, string, table, next, type, tinsert, tremove, tsort, format, tostring, tonumber, strfind, strsub
  = _G.print, _G.ipairs, _G.pairs, _G.string, _G.table, _G.next, _G.type, _G.table.insert, _G.table.remove, _G.table.sort, _G.string.format, _G.tostring, _G.tonumber, _G.string.find, _G.string.sub
local ceil, floor, pi, tan, atan, atan2, abs, cos, sin, acos, max, random
  = _G.math.ceil, _G.math.floor, _G.math.pi, _G.math.tan, _G.math.atan, _G.math.atan2, _G.math.abs, _G.math.cos, _G.math.sin, _G.math.acos, _G.math.max, _G.math.random
=======
--ModernSaint was here!
local print, ipairs, pairs, string, table, next, type, tinsert, tremove, tsort, format, tostring, tonumber, strfind, strsub
        = _G.print, _G.ipairs, _G.pairs, _G.string, _G.table, _G.next, _G.type, _G.table.insert, _G.table.remove, _G.table.sort, _G.string.format, _G.tostring, _G.tonumber, _G.string.find, _G.string.sub
local ceil, floor, pi, tan, atan, atan2, abs, cos, sin, acos, max, random
        = _G.math.ceil, _G.math.floor, _G.math.pi, _G.math.tan, _G.math.atan, _G.math.atan2, _G.math.abs, _G.math.cos, _G.math.sin, _G.math.acos, _G.math.max, _G.math.random
>>>>>>> 098185af75c20e1cb66282c21fae60d56173e377

local BotEcho, VerboseLog, BotLog = core.BotEcho, core.VerboseLog, core.BotLog
local Clamp = core.Clamp

<<<<<<< HEAD
BotEcho('loading devourer_main...')

object.heroName = 'Hero_Devourer'
=======
BotEcho('loading Devourer_main...')
>>>>>>> 098185af75c20e1cb66282c21fae60d56173e377

--------------------------------
-- Lanes
--------------------------------
<<<<<<< HEAD
core.tLanePreferences = {Jungle = 0, Mid = 5, ShortSolo = 0, LongSolo = 0, ShortSupport = 0, LongSupport = 0, ShortCarry = 0, LongCarry = 0}

--------------------------------
-- Skills
--------------------------------
local bSkillsValid = false
function object:SkillBuild()
  local unitSelf = self.core.unitSelf

  if not bSkillsValid then
    skills.hook = unitSelf:GetAbility(0)
    skills.fart = unitSelf:GetAbility(1)
    skills.skin = unitSelf:GetAbility(2)
    skills.ulti = unitSelf:GetAbility(3)
    skills.attributeBoost = unitSelf:GetAbility(4)

    if skills.hook and skills.fart and skills.skin and skills.ulti and skills.attributeBoost then
      bSkillsValid = true
    else
      return
    end
  end

  if unitSelf:GetAbilityPointsAvailable() <= 0 then
    return
  end

  if skills.ulti:CanLevelUp() then
    skills.ulti:LevelUp()
  elseif skills.hook:CanLevelUp() then
    skills.hook:LevelUp()
  elseif skills.fart:CanLevelUp() then
    skills.fart:LevelUp()
  elseif skills.skin:CanLevelUp() then
    skills.skin:LevelUp()
  else
    skills.attributeBoost:LevelUp()
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
behaviorLib.StartingItems =
        {"Item_IronBuckler", "Item_RunesOfTheBlight", "Item_MagicWand"}

BotEcho('finished loading devourer_main')
=======
core.tLanePreferences = {Jungle = 0, Mid = 5, ShortSolo = 3, LongSolo = 1, ShortSupport = 2, LongSupport = 2, ShortCarry = 4, LongCarry = 3}

object.heroName = 'Hero_Devourer'

--------------------------------
-- Skills For Devourer
--------------------------------
function object:SkillBuild()

    local unitSelf = self.core.unitSelf

	if skills.abilHook      == nil then
		skills.abilHook = unitSelf:GetAbility(0)
		skills.abilDecay = unitSelf:GetAbility(1)
		skills.abilArmor = unitSelf:GetAbility(2)
		skills.abilDevour = unitSelf:GetAbility(3)

		skills.attributeBoost = unitSelf:GetAbility(4)
	end

	if unitSelf:GetAbilityPointsAvailable() <= 0 then
		return
	end

	if skills.abilDevour:CanLevelUp() then
		skills.abilDevour:LevelUp()
	elseif skills.abilHook:CanLevelUp() then
		skills.abilHook:LevelUp()
	elseif skills.abilDecay:GetLevel() < 1 then
		skills.abilDecay:LevelUp()
	elseif skills.abilArmor:CanLevelUp() then
		skills.abilArmor:LevelUp()
	elseif skills.abilDecay:CanLevelUp() then
		skills.abilDecay:LevelUp()
	else
		skills.attributeBoost:LevelUp()
	end
end

---------------------------------------------------
--                   Utilities                   --
---------------------------------------------------
-- bonus aggression points if a skill/item is available for use
object.nHookUp = 25
object.nDecayUp = 15
object.nDevourUp = 35
object.nPortalkeyUp = 8
-- bonus aggression points that are applied to the bot upon successfully using a skill/item
object.nHookUse = 30
object.nDecayUse = 15
object.nDevourUse = 45
object.nPortalkeyUse = 10
--thresholds of aggression the bot must reach to use these abilities
object.nHookThreshold = 27
object.nDecayThreshold = 20
object.nDevourThreshold = 30
object.nPortalkeyThreshold = 18

----------------------------------------------
--                oncombatevent override                --
----------------------------------------------
local function AbilitiesUpUtilityFn()
        local val = 0

        if skills.abilHook:CanActivate() then
                val = val + object.nHookUpBonus
        end

        if skills.abilDecay:CanActivate() then
                val = val + object.nDecayUpBonus
        end

        if skills.abilDevour:CanActivate() then
                val = val + object.nDevourUpBonus
        end

        if core.itemPortalkey and core.itemPortalkey:CanActivate() then
                val = val + object.nPortalkeyUpBonus
        end

        return val
end

function object:oncombateventOverride(EventData)
                self:oncombateventOld(EventData)

        local addBonus = 0

    if EventData.Type == "Ability" then
                if EventData.InflictorName == "Ability_Devourer1" then
                        addBonus = addBonus + object.nHookUseBonus
                end

                if EventData.InflictorName == "Ability_Devourer2" then
                        addBonus = addBonus + object.nDecayUseBonus
                end

                if EventData.InflictorName == "Ability_Devourer4" then
                        addBonus = addBonus + object.nDevourUseBonus
                end

    elseif EventData.Type == "Item" then
                if core.itemPortalkey ~= nil and EventData.SourceUnit == core.unitSelf:GetUniqueID() and EventData.InflictorName == core.itemPortalkey:GetName() then
                        addBonus = addBonus + self.PortalkeyUseBonus
        end
    end

    if addBonus > 0 then
            --decay before we add
            core.DecayBonus(self)
            core.nHarassBonus = core.nHarassBonus + addBonus
    end
end
object.oncombateventOld = object.oncombatevent
object.oncombatevent = object.oncombateventOverride

----------------------------------
--      Devourer harass actions
----------------------------------
local function HarassHeroExecuteOverride(botBrain)

	local unitTarget = behaviorLib.heroTarget

        if unitTarget == nil or not unitTarget:IsValid() then
                return false --can not execute, move on to the next behavior
        end

        local unitSelf = core.unitSelf
        local vecMyPosition = unitSelf:GetPosition()

        local vecTargetPosition = unitTarget:GetPosition()
        local nTargetDistanceSq = Vector3.Distance2DSq(vecMyPosition, vecTargetPosition)
        local nLastHarassUtility = behaviorLib.lastHarassUtil

        local bActionTaken = false

        local abilHook = skills.abilHook
        local abilDecay = skills.abilDecay
                local abilDevour = skills.abilDevour

        local tLocalEnemyHeroes = core.localUnits["EnemyHeroes"]
        local tLocalAllyHeroes = core.localUnits["AllyHeroes"]
            local itemPK = core.GetItem ("Item_PortalKey")

                --Decay
        if abilDecay:CanActivate() and nTargetDistanceSq < (300 * 300) then --Rot can activate and target is in effective range
                        if nLastHarassUtility > botBrain.nDecayThreshold then --Passes utility check
                core.OrderAbility(botBrain, abilDecay)
                        end
        end

                --Hook
	if not bActionTaken and abilHook:CanActivate()then
		local nRange = abilHook:GetRange()
		if nTargetDistanceSq < (nRange * nRange) then  --Hook if target is in range
			local sqrt = math.sqrt
				-- Creates a line from A to B and returns all units from tUnits that are closer than radius from that line
				-- for math see http://en.wikipedia.org/wiki/Distance_from_a_point_to_a_line#Line_defined_by_two_points
			local function getUnitsBetween(tUnits, vecPointA, vecPointB, radius)
				local tReturn = {}
				local nLinelength = sqrt((vecPointA.x - vecPointB.x)^2 + (vecPointA.y - vecPointB.y)^2)
				for _, unit in pairs(tUnits) do
					local vecUnitPos = unit:GetPosition()
					if Vector3.Distance2DSq(vecUnitPos, vecPointA) < nLinelength^2 and Vector3.Distance2DSq(vecUnitPos, vecPointB) < nLinelength^2 then
						local distance = abs((vecPointB.y - vecPointA.y) * vecUnitPos.x - (vecPointB.x - vecPointA.x) * vecUnitPos.y + vecPointB.x * vecPointA.y - vecPointB.y * vecPointA.x)/nLinelength
						if distance < radius then
							tinsert(tReturn, unit)
						end
					end
				end
			
				if unitSelf:GetMana() > 0.80 then --devo has mana
					bActionTaken = core.OrderAbilityPosition(botBrain, abilHook, vecTargetPosition)
				elseif ( unitTarget:GetHealth() < 0.40 ) then --target has low HP
					bActionTaken = core.OrderAbilityPosition(botBrain, abilHook, vecTargetPosition)
				elseif nLastHarassUtility > botBrain.nHookThreshold then -- passes a utility check
					bActionTaken = core.OrderAbilityPosition(botBrain, abilHook, vecTargetPosition)
				end		
                return tReturn	
			end								
		end
	end

        if not bActionTaken and itemPK and itemPortalKey:CanActivate() then
                if abilDevour:CanActivate() and core.NumberElements(tLocalEnemyHeroes) < 2 then -- If there is only one enemy and devour is up
                        bActionTaken = core.OrderItemPosition(botBrain, unitSelf, itemPK, vecTargetPosition)
                end
        end

                   --Devour
                if not bActionTaken and abilDevour:CanActivate() then
                        if (nLastHarassUtility > botBrain.nDevourThreshold)then
                                bActionTaken = core.OrderAbilityEntity(botBrain, abilDevour, unitTarget)
                        end
                end

        if not bActionTaken then
                return object.harassExecuteOld(botBrain)
    end
end
object.harassExecuteOld = behaviorLib.HarassHeroBehavior["Execute"]
behaviorLib.HarassHeroBehavior["Execute"] = HarassHeroExecuteOverride


----------------------------------------------------
-- Heal At Well Override --
----------------------------------------------------
--4000 gold adds 8 to return utility, slightly reduced need to return.

local function HealAtWellUtilityOverride(botBrain)

local vecBackupPos = core.allyWell and core.allyWell:GetPosition() or behaviorLib.PositionSelfBackUp()
local nGoldSpendingDesire = 8 / 4000

        if (Vector3.Distance2DSq(core.unitSelf:GetPosition(), vecBackupPos) < 400 * 400 and core.unitSelf:GetManaPercent() * 100 < 95) then
                return 80
        end

        return object.HealAtWellUtilityOld(botBrain) + (botBrain:GetGold() * nGoldSpendingDesire) --courageously flee back to base.
end
--When returning to well, use skills and items.
function behaviorLib.CustomReturnToWellExecute(botBrain)

end
       function behaviorLib.CustomRetreatExecute(botBrain)


    local bActionTaken = false

    local itemPortalKey = core.GetItem("Item_PortalKey")

    if behaviorLib.nLastRetreatUtil > object.retreatPKThreshold and itemPortalKey ~= nil then

        if itemPortalKey:CanActivate() then

            bActionTaken = core.OrderBlinkItemToEscape(botBrain, unitSelf, itemPortalKey)

        end

    end

    return bActionTaken

end


object.HealAtWellUtilityOld = behaviorLib.HealAtWellBehavior["Utility"]
behaviorLib.HealAtWellBehavior["Utility"] = HealAtWellUtilityOverride

----------------------------------
--      Devourer items
----------------------------------
behaviorLib.StartingItems =
        {"2 Item_IronBuckler", "Item_RunesOfTheBlight"}
behaviorLib.LaneItems =
        {"Item_Lifetube", "Item_Marchers", "Item_Shield2", "Item_MysticVestments"} -- Shield2 is HotBL
behaviorLib.MidItems =
        {"Item_EnhancedMarchers", "Item_PortalKey"}
behaviorLib.LateItems =
        {"Item_Excruciator", "Item_SolsBulwark", "Item_DaemonicBreastplate", "Item_Intelligence7", "Item_HealthMana2", "Item_BehemothsHeart"} --Excruciator is Barbed Armor, Item_Intelligence7 is staff, Item_HealthMana2 is icon


--[[ colors:
        red
        aqua == cyan
        gray
        navy
        teal
        blue
        lime
        black
        brown
        green
        olive
        white
        silver
        purple
        maroon
        mango
        yellow
        orange
        lilac
        fuchsia == magenta
        invisible
--]]

BotEcho('finished loading Devourer_main')
>>>>>>> 098185af75c20e1cb66282c21fae60d56173e377
