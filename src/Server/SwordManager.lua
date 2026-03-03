-- SwordManager.lua

-- This module governs the enhancement system for swords in the game.

local SwordManager = {}

-- A table to hold sword enhancements
SwordManager.enhancements = {}

-- Adds a new enhancement to the sword
function SwordManager:addEnhancement(swordId, enhancement)
    if not self.enhancements[swordId] then
        self.enhancements[swordId] = {}
    end
    table.insert(self.enhancements[swordId], enhancement)
end

-- Gets enhancements for a specific sword
function SwordManager:getEnhancements(swordId)
    return self.enhancements[swordId] or {}
end

-- Enhances a sword by applying all enhancements
function SwordManager:enhanceSword(swordId)
    local enhancements = self:getEnhancements(swordId)
    local finalSword = { id = swordId, effects = {} }

    for _, enhancement in ipairs(enhancements) do
        for effect, value in pairs(enhancement.effects) do
            finalSword.effects[effect] = (finalSword.effects[effect] or 0) + value
        end
    end

    return finalSword
end

return SwordManager
