---@class RemixGemHelperPrivate
local Private = select(2, ...)
local const = Private.constants

local defaultDatabase = {
    show_unowned = false,
    show_primordial = false,
    show_frame = true,
    show_helpframe = true
}

local addon = LibStub("RasuAddon"):CreateAddon(
    const.ADDON_NAME,
    "RemixGemHelperDB",
    defaultDatabase,
    Private.Locales
)
for lang, langInfo in pairs(Private.Locales) do
    if langInfo.isEditing then
        function GetLocale() return lang end
    end
end
Private.Addon = addon
