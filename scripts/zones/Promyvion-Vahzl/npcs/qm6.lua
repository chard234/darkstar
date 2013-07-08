-----------------------------------	
-- ??? map acquisition
-- Area: Promyvion holla
-----------------------------------	
	package.loaded["scripts/zones/Promyvion-Holla/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/zones/Promyvion-Holla/TextIDs");
	

	
-----------------------------------	
-- onTrigger Action	
-----------------------------------	
	
function onTrigger(player,npc)	
player:messageSpecial(6392);--There is nothing out of the ordinary here.
end;	
	
-----------------------------------	
-- onTrade Action	
-----------------------------------	
	
function onTrade(player,npc,trade)	
 if (trade:hasItemQty(1720,1) and trade:getItemCount() == 1 and player:hasKeyItem(436)==false)then
 player:addKeyItem(436); --add map
 player:tradeComplete();
 player:messageSpecial(KEYITEM_OBTAINED,436);
 else
 player:messageSpecial(119);--Nothing happens
 end
end;	
	

	
-----------------------------------	
-- onEventFinish Action	
-----------------------------------	
	
function onEventFinish(player,csid,option)	
end;	
