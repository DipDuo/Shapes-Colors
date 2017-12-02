
--load composer & setup scene
local composer = require( "composer" )
local scene = composer.newScene()
local widget = require( "widget" )
local utility = require( "utility" )
local myData = require( "myData" )
local bestScore = myData.bestScore
local currentScore          -- used to hold the numeric value of the current score
local currentScoreDisplay   -- will be a display.newText() that draws the score on the screen

-------------------------------------------------------------------------------------------------



local function handleButtonEvent( event )


    if ( "ended" == event.phase ) then
        local options = {
            effect = "crossFade",
            time = 500,
            }
        myData.settings.currentLevel=1
        myData.settings.soundOn=true
        myData.settings.musicOn=true
        composer.gotoScene( "menu", options )
    end
    return true
end

----------------------------------------------------------------------------------------------
--create scene

function scene:create( event )
    myData.settings.currentLevel=1
    local sceneGroup = self.view
    
    local background = display.newRect( 0, 0, display.contentWidth, display.contentHeight)
    background:setFillColor(46/255, 139/255, 87/255)
    background.x = display.contentCenterX
    background.y = display.contentCenterY
    sceneGroup:insert(background)

    local gameOverText = display.newText("Game Over", 0, 0, native.systemFontBold, 32 )
    gameOverText:setFillColor( 0 )
    gameOverText.x = display.contentCenterX
    gameOverText.y = 50
    sceneGroup:insert(gameOverText)

    currentScoreText = display.newText("Current Score:", display.contentCenterX, display.contentCenterY -60, native.systemFontBold, 40)
    sceneGroup:insert(currentScoreText)

    currentScoreDisplay = display.newText("000000", display.contentCenterX, display.contentCenterY, native.systemFontBold, 40 )
    currentScoreDisplay:toFront()
    sceneGroup:insert( currentScoreDisplay )

    
    --print(myData.levelScore)


    if myData.settings.bestScore >0 then
        print(myData.settings.bestScore)

        currentScoreDisplay.text = string.format( "%06d", myData.settings.bestScore)
    --elseif myData.settings.bestScore == 0 then
    --    myData.settings.bestScore = 0
    --    currentScoreDisplay.text = string.format( "%06d", myData.setting.bestScore)
    elseif myData.settings.bestScore == nil then
        myData.settings.bestScore = 0
        currentScoreDisplay.text = string.format( "%06d", myData.bestScore) 
    else
        currentScoreDisplay.text = string.format( "%06d", myData.levelScore ) 
    end

    local doneButton = widget.newButton({
        id = "button1",
        label = "Done",
        font = native.systemFontBold,
        width = 100,
        height = 32,
        onEvent = handleButtonEvent
    })
    doneButton.x = display.contentCenterX
    doneButton.y = display.contentHeight - 40
    sceneGroup:insert( doneButton )
end


---------------------------------------------------------------------------------------------

--show/hide/destroy functions for composer to function correctly
function scene:show( event )
    local sceneGroup = self.view
    if event.phase == "did" then
        currentScoreDisplay.text = string.format( "%06d", myData.settings.bestScore )
        myData.settings.musicOn=true
        myData.settings.musicOn=true
    end
end

function scene:hide( event )
    local sceneGroup = self.view
    if event.phase == "will" then
    end
end

function scene:destroy( event )
    local sceneGroup = self.view
    myData.settings.bestScore=0
    myData.settings.musicOn=true
end


----------------------------------------------------------------------------------------------------

--add event listeners for scene
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
return scene
