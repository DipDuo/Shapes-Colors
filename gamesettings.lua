
--load composer & setup scene

local composer = require( "composer" )
local scene = composer.newScene()
local widget = require( "widget" )
local myData = require( "myData" )
local utility = require( "utility" ) 
local device = require( "device" )
local json = require( "json" )

------------------------------------------------------------------------------------------------------


-- Handle press events for the switches
local function onSoundSwitchPress( event )
    local switch = event.target

    if switch.isOn then
        myData.settings.soundOn = true
        print('soundOn=true')
    else
        myData.settings.soundOn = false
        print('soundOn=false')
    end
    utility.saveTable(myData.settings, "settings.json")
end

local function onMusicSwitchPress( event )
    local switch = event.target

    if switch.isOn then
        myData.settings.musicOn = true
        print('musicOn=true')
    else
        myData.settings.musicOn = false
        print('musicOn=false')
    end
    utility.saveTable(myData.settings, "settings.json")
end

-- Function to handle button events
local function handleButtonEvent( event )
        composer.gotoScene("menu", { effect = "crossFade", time = 333 })
end

---------------------------------------------------------------------------------------------------------------
--load functions into scene
function scene:create( event )
    local sceneGroup = self.view        
    
    local background = display.newRect( 0, 0, display.contentWidth, display.contentHeight )
    background:setFillColor(46/255, 139/255, 87/255)
    background.x = display.contentCenterX
    background.y = display.contentCenterY
    sceneGroup:insert(background)

    
    --header   
    local header = display.newRect( 0, 0, display.contentWidth, display.contentHeight*.25 )
    header:setFillColor( 0, 0, 0, 150/255)
    header.x = display.contentCenterX
    header.y = 0
    sceneGroup:insert( header )
	

    -- Title    
    local title = display.newText("Settings", 100, 32, "Fonts/HemiHead.tff", 32 )
    title.x = display.contentCenterX
    title.y = display.contentHeight * .07
    title:setFillColor( 154/255, 205/255, 50/255)
    sceneGroup:insert( title )

    local soundLabel = display.newText("Sound Effects", 100, 32, "Fonts/SuiGeneris.tff", 18 )
    soundLabel.x = display.contentCenterX - 75
    soundLabel.y = 130
    soundLabel:setFillColor( 0 )
    sceneGroup:insert( soundLabel )

    local soundOnOffSwitch = widget.newSwitch({
        style = "onOff",
        id = "soundOnOffSwitch",
        initialSwitchState = myData.settings.soundOn,
        onPress = onSoundSwitchPress
    })
    soundOnOffSwitch.x = display.contentCenterX + 100
    soundOnOffSwitch.y = soundLabel.y
    sceneGroup:insert( soundOnOffSwitch )

    local musicLabel = display.newText("Music", 100, 32, "Fonts/SuiGeneris.tff", 18 )
    musicLabel.x = display.contentCenterX - 75
    musicLabel.y = 180
    musicLabel:setFillColor( 0 )
    sceneGroup:insert( musicLabel )

    local musicOnOffSwitch = widget.newSwitch({
        style = "onOff",
        id = "musicOnOffSwitch",
        initialSwitchState = myData.settings.musicOn,
        onPress = onMusicSwitchPress
    })
    musicOnOffSwitch.x = display.contentCenterX + 100
    musicOnOffSwitch.y = musicLabel.y
    sceneGroup:insert( musicOnOffSwitch )

	local backButton = display.newRect( 0, 0, display.contentWidth/2.5, 50 )
	backButton:setFillColor( 0, 0, 0, 100/255)
	backButton.x = display.contentCenterX
	backButton.y = display.contentHeight * .9
	backButton:addEventListener( "tap", handleButtonEvent )
	sceneGroup:insert( backButton )
	
	local backButtonText = display.newText("Back", 100, 32, "Fonts/HemiHead.tff", 25 )
	backButtonText.x = display.contentCenterX
	backButtonText.y = display.contentHeight * .9
	backButtonText:setFillColor( 1, 1, 1, .9 )
	sceneGroup:insert( backButtonText )

end


-------------------------------------------------------------------------------------------------------------

--show/hide/destroy functions for composer to function correctly
function scene:show( event )
    local sceneGroup = self.view
    if event.phase == "did" then
    end
end

function scene:hide( event )
    local sceneGroup = self.view
    if event.phase == "will" then
    end
end

function scene:destroy( event )
    local sceneGroup = self.view
end

-----------------------------------------------------------------------------------------------------------------
--scene eventListeners
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
return scene
