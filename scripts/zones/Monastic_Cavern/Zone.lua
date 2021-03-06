-----------------------------------
--
-- Zone: Monastic_Cavern (150)
--
-----------------------------------
package.loaded["scripts/zones/Monastic_Cavern/TextIDs"] = nil
-----------------------------------
require("scripts/zones/Monastic_Cavern/TextIDs")
require("scripts/zones/Monastic_Cavern/MobIDs")
require("scripts/globals/conquest")
-----------------------------------

function onInitialize(zone)
    UpdateNMSpawnPoint(ORCISH_OVERLORD)
    GetMobByID(ORCISH_OVERLORD):setRespawnTime(math.random(900, 10800))

    UpdateTreasureSpawnPoint(MONASTIC_TREASURE_COFFER)
end

function onZoneIn(player,prevZone)
    local cs = -1
    if player:getXPos() == 0 and player:getYPos() == 0 and player:getZPos() == 0 then
        player:setPos(261.354,-8.792,23.124,175)
    end
    return cs
end

function onConquestUpdate(zone, updatetype)
    dsp.conq.onConquestUpdate(zone, updatetype)
end

function onRegionEnter(player,region)
end

function onEventUpdate(player,csid,option)
end

function onEventFinish(player,csid,option)
end