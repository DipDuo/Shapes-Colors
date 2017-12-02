
--load composer & setup scene
local composer = require( "composer" )
local utility = require( "utility" )
local myData = require( "myData" )
local composer = require( "composer" )
local widget = require( "widget" )
local device = require( "device" )
local json = require( "json" )


_G.frameIndexes = {}
-------------------------------------------------------------------------------------------------------

-- Settings Information

myData.settings = utility.loadTable("settings.json")
if myData.settings == nil then
	myData.settings = {}
    myData.settings.currentLevelName = "Level"
    myData.settings.currentMode1 = "Easy"
    myData.settings.currentMode2 = "Medium"
    myData.settings.currentMode3 = "Hard"
	myData.settings.soundOn = true
	myData.settings.musicOn = true
    myData.settings.isPaid = false
	myData.settings.currentLevel = 1
	myData.settings.easyLevel = 1
	myData.settings.medLevel = 1
	myData.settings.hardLevel = 1
    myData.settings.bestScore = 0
	myData.settings.objTapped = 0
	myData.settings.levels = {}
	utility.saveTable(myData.settings, "settings.json")
end
if myData.settings.bestScore == nil then
    myData.settings.bestScore = 0
end
if myData.settings.currentLevel > 1 then
    myData.settings.currentLevel = 1
end
if myData.settings.easyLevel == nil then
    myData.settings.easyLevel = 1
end
	if myData.settings.medLevel == nil then
    myData.settings.medLevel = 1
end
if myData.settings.hardLevel == nil then
    myData.settings.hardLevel = 1
end

myData.settings.objTapped = 0

print(myData.settings.currentLevelName)
print(myData.settings.currentLevel)
print('sound=',myData.settings.soundOn)
print('music=',myData.settings.musicOn)



---------------------------------------------------------------------------------------------------------------
--load functions into scene

local function systemEvents(event)
	print("systemEvent " .. event.type)
    if event.type == "applicationSuspend" then
        utility.saveTable( myData.settings, "settings.json" )
    elseif event.type == "applicationResume" then
    elseif event.type == "applicationExit" then
        utility.saveTable( myData.settings, "settings.json" )
    elseif event.type == "applicationStart" then
    
        composer.gotoScene( "splash", { time = 250, effect = "fade" } ) -- Go to the splash
    end
    return true
end


Runtime:addEventListener("system", systemEvents)
