-- UI system for sword enhancement interface

local SwordEnhancementUI = {}

function SwordEnhancementUI:new()
    local newObj = { enhancements = {} }
    self.__index = self
    return setmetatable(newObj, self)
end

function SwordEnhancementUI:addEnhancement(enhancement)
    table.insert(self.enhancements, enhancement)
    print("Enhancement added: " .. enhancement)
end

function SwordEnhancementUI:displayEnhancements()
    print("Sword Enhancements")
    for i, enhancement in ipairs(self.enhancements) do
        print(i .. ": " .. enhancement)
    end
end

return SwordEnhancementUI
