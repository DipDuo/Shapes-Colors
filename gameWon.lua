
--load composer & setup scene


local composer = require( "composer" )
local scene = composer.newScene()

local widget = require( "widget" )
local myData = require( "myData" )
local utility = require( "utility" )
 
local nextLevelText
local currentScore          -- used to hold the numeric value of the current score
local currentScoreDisplay   -- will be a display.newText() that draws the score on the screen

----------------------------------------------------------------------------------------------

-- Function to handle button events
local function handleButtonEvent( event )

    if ( "ended" == event.phase ) then
        composer.removeScene( "splash", false )
        composer.gotoScene( "splash", { effect = "crossFade", time = 333 } )
    end
end


function scene:create( event )
    local sceneGroup = self.view

    params = event.params
        
    myData.settings.currentLevel = myData.settings.currentLevel + 1
    utility.saveTable(myData.settings, "settings.json")
    
    --
    local background = display.newRect( 0, 0, display.contentWidth, display.contentHeight )
    background:setFillColor(46/255, 139/255, 87/255)
    background.x = display.contentCenterX
    background.y = display.contentCenterY
    sceneGroup:insert(background)

    local youWonOptions = { text = "You won the game!", fontSize = 35, font = native.systemFontBold, align = "center"}

    local youWonText = display.newText( youWonOptions )
    youWonText.x = display.contentCenterX 
    youWonText.y = display.contentCenterY-100
    youWonText:setFillColor( 1,0,1 )
    sceneGroup:insert(youWonText)
    
    gameModeText = display.newText("Skill Level Completed! "..myData.settings.currentMode1, display.contentCenterX, 20, native.systemFontBold, 20)
    gameModeText:setFillColor( 0 )
    sceneGroup:insert(gameModeText)

    masteredText = display.newText("You've mastered all the levels!", display.contentCenterX, 50, native.systemFontBold, 25)
    masteredText:setFillColor(1,0,1)
    sceneGroup:insert(masteredText)

    currentScoreText = display.newText("Current Score:", display.contentCenterX, display.contentHeight -160, native.systemFontBold, 40)
    sceneGroup:insert(currentScoreText)

    currentScoreDisplay = display.newText("000000", display.contentCenterX, display.contentHeight -120, native.systemFontBold, 40 )
    currentScoreDisplay:toFront()
    sceneGroup:insert( currentScoreDisplay )
    currentScoreDisplay.text = string.format( "%06d", myData.levelScore )   

    -- Create the widget
    local doneButton = widget.newButton({
        id = "button1",
        label = "Click Here to Play Again",
        font = native.systemFontBold,
        width = 310,
        height = 32,
        onEvent = handleButtonEvent
    })
    doneButton.x = display.contentCenterX 
    doneButton.y = display.contentHeight - 40
    sceneGroup:insert( doneButton )

end

function scene:show( event )
    local sceneGroup = self.view

    params = event.params

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


scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
return scene
