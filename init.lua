hs.hotkey.alertDuration = 0
hs.hints.showTitleThresh = 0
hs.window.animationDuration = 0

hsreload_keys = hsreload_keys or {{"alt", "ctrl"}, "R"}
if string.len(hsreload_keys[2]) > 0 then
    hs.hotkey.bind(hsreload_keys[1], hsreload_keys[2], "Config Loaded!", function() hs.reload() end)
    hs.alert.show("Config Loaded!")
end

hs.loadSpoon("ModalMgr")
hs.loadSpoon("WinWin")
-- window management http://qtdebug.com/mac-hammerspoon/
hs.hotkey.bind({"alt", "ctrl"}, "Return", "Max", function() spoon.WinWin:moveAndResize("fullscreen") end)
hs.hotkey.bind({"alt", "ctrl"}, "Left", "Left", function() spoon.WinWin:moveAndResize("halfleft") end)
hs.hotkey.bind({"alt", "ctrl"}, "Right", "Right", function() spoon.WinWin:moveAndResize("halfright") end)
hs.hotkey.bind({"alt", "ctrl"}, "\\", "Center", function() spoon.WinWin:moveAndResize("fullscreen") spoon.WinWin:moveAndResize("shrink") end)
hs.hotkey.bind({"alt", "ctrl"}, "-", "Shrink", function() spoon.WinWin:moveAndResize("shrink") end)
hs.hotkey.bind({"alt", "ctrl"}, "=", "Expand", function() spoon.WinWin:moveAndResize("expand") end)
hs.hotkey.bind({"cmd", "ctrl"}, "Left", "LeftMoniter", function() spoon.WinWin.moveToScreen("Left") end)
hs.hotkey.bind({"cmd", "ctrl"}, "Right", "RightMoniter", function() spoon.WinWin.moveToScreen("Right") end)

-- Register Hammerspoon API manual: Open Hammerspoon manual in default browser
-- spoons manual https://github.com/Hammerspoon/hammerspoon/blob/master/SPOONS.md
hsman_keys = hsman_keys or {{"alt", "ctrl"}, "H"}
if string.len(hsman_keys[2]) > 0 then
    hs.hotkey.bind(hsman_keys[1], hsman_keys[2], "Read Hammerspoon Manual", function()
        hs.doc.hsdocs.forceExternalBrowser(true)
        hs.doc.hsdocs.moduleEntitiesInSidebar(true)
        hs.doc.hsdocs.help()
    end)
end