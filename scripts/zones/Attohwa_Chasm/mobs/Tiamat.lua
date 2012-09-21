-----------------------------------
-- Area: Attohwa Chasm
-- NPC:  Tiamat
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/status");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function OnMobSpawn(mob)
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob,target)
	
	-- Auto Regen (low)
	if(mob:hasStatusEffect(EFFECT_REGEN) == false) then
		mob:addStatusEffect(EFFECT_REGEN,25,3,0);
	end
	
	-- Takes ~50% damage from magical attacks and ranged attacks. 
	if(mob:hasStatusEffect(EFFECT_MAGIC_DEF_BOOST) == false) then
		mob:addStatusEffect(EFFECT_MAGIC_DEF_BOOST,50,0,0);
	end
	
	-- Gains a large attack boost when health is under 25% which cannot be Dispelled. 
	if(mob:getHP() < ((mob:getMaxHP() / 10) * 2.5)) then
		if(mob:hasStatusEffect(EFFECT_ATTACK_BOOST) == false) then
			mob:addStatusEffect(EFFECT_ATTACK_BOOST,75,0,0);
			printf("ok");
		end
	end
	
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
	killer:setTitle(TIAMAT_TROUNCER);
end;