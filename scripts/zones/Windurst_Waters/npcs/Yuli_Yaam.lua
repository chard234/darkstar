-----------------------------------
-- Area: Windurst Waters
--  NPC: Yuli Yaam
-- Involved In Quest: Wondering Minstrel
-- !pos -61 -4 23 238
-----------------------------------
package.loaded["scripts/zones/Windurst_Waters/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Windurst_Waters/TextIDs");
require("scripts/globals/settings");
require("scripts/globals/keyitems");
require("scripts/globals/quests");
require("scripts/globals/titles");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    wonderingstatus = player:getQuestStatus(WINDURST,WONDERING_MINSTREL);
    fame = player:getFameLevel(WINDURST)
    if (wonderingstatus <= 1 and fame >= 5) then
        player:startEvent(0x027d);                        -- WONDERING_MINSTREL: Quest Available / Quest Accepted
    elseif (wonderingstatus == QUEST_COMPLETED and player:needToZone()) then
        player:startEvent(0x0281);                      -- WONDERING_MINSTREL: Quest After
    else
        rand = math.random(2);
        if (rand == 1) then
            player:startEvent(0x0264);                  -- Standard Conversation 1
        else
            player:startEvent(0x0265);                     -- Standard Conversation 2
        end
    end
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;
