-----------------------------------
-- Area: Grauberg [S]
--  NPC: qm2 (???)
-- Involved In Quest: The Fumbling Friar
-- !pos 80 -1 457 89
-----------------------------------
package.loaded["scripts/zones/Grauberg_[S]/TextIDs"] = nil
-----------------------------------
require("scripts/zones/Grauberg_[S]/TextIDs")
require("scripts/globals/npc_util")
require("scripts/globals/keyitems")
require("scripts/globals/quests")
-----------------------------------

function onTrade(player, npc, trade)
end

function onTrigger(player, npc)
    if player:getQuestStatus(CRYSTAL_WAR, THE_FUMBLING_FRIAR) == QUEST_ACCEPTED and not player:hasKeyItem(dsp.ki.ORNATE_PACKAGE) then
        npcUtil.giveKeyItem(player, dsp.ki.ORNATE_PACKAGE)
    else
        player:messageSpecial(NOTHING_OUT_OF_ORDINARY)
    end
end

function onEventUpdate(player, csid, option)
end

function onEventFinish(player, csid, option)
end
