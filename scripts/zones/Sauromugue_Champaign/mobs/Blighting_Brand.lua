-----------------------------------
-- Area: Sauromugue Champaign
--  MOB: Blighting Brand
-----------------------------------

require("scripts/globals/fieldsofvalor");

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    checkRegime(player,mob,100,2);
end;

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)
     -- Set Eldritch Edge's Window Open Time
    local wait = math.random(5400,7200);
    SetServerVariable("[POP]Blighting_Brand", os.time() + wait); -- 90 to 120 minutes
    DisallowRespawn(mob:getID(), true);

    -- Set PH back to normal, then set to respawn spawn
    local PH = GetServerVariable("[PH]Blighting_Brand");
    SetServerVariable("[PH]Blighting_Brand", 0);
    DisallowRespawn(PH, false);
    GetMobByID(PH):setRespawnTime(GetMobRespawnTime(PH));
end;
