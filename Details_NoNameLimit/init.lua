local function OnEvent(self, event)
    if not _G.NickTag then 
        return 
    end
    _G.NickTag.CheckName = function(self, name)
            if(type(name) ~= "string") then
                return false, LibStub("AceLocale-3.0"):GetLocale("NickTag-1.0")["STRING_ERROR_4"] --> error 4 = name isn't a valid string
            end
            return true
        end
    self:SetScript("OnUpdate", nil)
end


local f = CreateFrame("Frame")
f:SetScript("OnUpdate", OnEvent)

