
--load composer & setup scene
local composer = require("composer")
local scene = composer.newScene()
local widget = require("widget")
local utility = require("utility")
local myData = require("myData")
local json = require("json")


---------------------------------------------------------------------------------------------------------------
--load functions into scene
function scene:create( event )
    local sceneGroup = self.view
     
    --backgroud    
    local background = display.newRect( 0, 0, display.contentWidth, display.contentHeight )
    background:setFillColor(46/255, 139/255, 87/255)
    background.x = display.contentCenterX
    background.y = display.contentCenterY
    sceneGroup:insert( background )


    --Game Title    
    local title = display.newText("Shapes & Colors", 100, 32, native.systemFontBold, 32 )
    title.x = display.contentCenterX
    title.y = 40
    title:setFillColor( 154/255, 205/255, 50/255)
    sceneGroup:insert( title )

    --Text 
    local myText = display.newText ("Player, choose your comfort level.",0,0, nil, 15)   --adds tap function to screen
    myText:setFillColor(1,1,1)
    myText.x=display.contentCenterX
    myText.y=display.contentHeight-400
    sceneGroup:insert (myText)
   
    --local buttons
    local myButton1 = display.newImage("Images/Buttons/easy.png")
    myButton1.x=display.contentCenterX
    myButton1.y=display.contentHeight-290
    myButton1:scale (.5,.5)
    sceneGroup:insert (myButton1)
    
    local myButton2 = display.newImage("Images/Buttons/medium.png")
    myButton2.x=display.contentCenterX
    myButton2.y=display.contentHeight-220
    myButton2:scale (.5,.5)
    sceneGroup:insert (myButton2)
    
    local myButton3 = display.newImage("Images/Buttons/hard.png")
    myButton3.x=display.contentCenterX
    myButton3.y=display.contentHeight-150
    myButton3:scale (.5,.5)
    sceneGroup:insert (myButton3)

    local myButton4 = display.newImage("Images/Buttons/settings.png")
    myButton4.x=display.contentCenterX
    myButton4.y=display.contentHeight-50
    myButton4:scale (.5,.5)
    sceneGroup:insert (myButton4)

-------------------------------------------------------------------------------------------------------------

--functions for nextScenes

    local function nextScene1 (easyLevel)
        
       composer.gotoScene("levelse", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
    end

    myButton1:addEventListener("tap", nextScene1)

    local function nextScene2 (mediumLevel)
       composer.gotoScene("levelsm", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
    end

    myButton2:addEventListener("tap", nextScene2)

    local function nextScene3 (hardLevel)
     composer.gotoScene("levelsh", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
    end

    myButton3:addEventListener("tap", nextScene3)

    local function settings (settings)
     composer.gotoScene("gamesettings", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
    end

    myButton4:addEventListener("tap", settings)

end


-------------------------------------------------------------------------------------------------------------

--show/hide/destroy functions for composer to function correctly
function scene:show( event )
    local sceneGroup = self.view

    if event.phase == "did" then
        composer.removeScene( "game1" ) 
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

-------------------------------------------------------------------------------------------
--scene eventListeners

scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
return scene
