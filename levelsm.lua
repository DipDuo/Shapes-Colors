display.setStatusBar( display.HiddenStatusBar )

----------------------------------------------------------------------------------------------
--load composer & setup scene
local composer = require("composer")
local scene = composer.newScene()
local widget = require("widget")
local utility = require("utility")
local myData = require( "myData" )
local json = require( "json" )
--------------------------------------------------------------------------------------------------------------------------
--Button Events
	local function handleButtonEvent( event )

    if ( "ended" == event.phase ) then
        composer.gotoScene("menu", { effect = "crossFade", time = 333 })
    end
	end
	


---------------------------------------------------------------------------------------------------------------
--load functions into scene
function scene:create( event )
    local sceneGroup = self.view
	
	params = event.params
     
    --backgroud    
    local background = display.newRect( 0, 0, display.contentWidth, display.contentHeight )
    background:setFillColor(46/255, 139/255, 87/255)
    background.x = display.contentCenterX
    background.y = display.contentCenterY
    sceneGroup:insert( background )

	
	
---------------------------------------------------------------------------------------------------------------
--load functions (levels) into scene

    --header   
    local header = display.newRect( 0, 0, display.contentWidth, display.contentHeight*.25 )
    header:setFillColor( 0, 0, 0, 150/255)
    header.x = display.contentCenterX
    header.y = 0
    sceneGroup:insert( header )
	

    --Game Title    
    local title = display.newText("Medium Levels", 100, 32, "Fonts/HemiHead.tff", 32 )
    title.x = display.contentCenterX
    title.y = display.contentHeight * .07
    title:setFillColor( 154/255, 205/255, 50/255)
    sceneGroup:insert( title )

	--Goes through all the buttons
	local medButton1 = display.newImage("Images/Levels/1g.png")
    medButton1.x=display.contentWidth*.25
    medButton1.y=display.contentHeight*.3
    medButton1:scale (.5,.5)
    sceneGroup:insert (medButton1)
	
	local function nextScene1 (lvl1)
        
       composer.gotoScene("match1", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
	   
    end
	medButton1:addEventListener("tap", nextScene1)
	
	
		--If statements needed for these to decide whether or not the level is unlocked.
    if myData.settings.medLevel >= 2 then
		local medButton2 = display.newImage("Images/Levels/2g.png")
		medButton2.x=display.contentWidth*.5
		medButton2.y=display.contentHeight*.3
		medButton2:scale (.5,.5)
		sceneGroup:insert (medButton2)
		local function nextScene2 (lvl2)
    
        composer.gotoScene("match2", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
			
		end
		medButton2:addEventListener("tap", nextScene2)
	else
		local medButton2 = display.newImage("Images/Levels/2r.png")
		medButton2.x=display.contentWidth*.5
		medButton2.y=display.contentHeight*.3
		medButton2:scale (.5,.5)
		sceneGroup:insert (medButton2)
	end
    
    if myData.settings.medLevel >= 3 then
		local medButton3 = display.newImage("Images/Levels/3g.png")
		medButton3.x=display.contentWidth*.75
		medButton3.y=display.contentHeight*.3
		medButton3:scale (.5,.5)
		sceneGroup:insert (medButton3)
		local function nextScene3 (lvl3)
        
       composer.gotoScene("match3", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
		
		end
		medButton3:addEventListener("tap", nextScene3)
	
	else
		local medButton3 = display.newImage("Images/Levels/3r.png")
		medButton3.x=display.contentWidth*.75
		medButton3.y=display.contentHeight*.3
		medButton3:scale (.5,.5)
		sceneGroup:insert (medButton3)
	end

	
	if myData.settings.medLevel >= 4 then
		local medButton4 = display.newImage("Images/Levels/4g.png")
		medButton4.x=display.contentWidth*.25
		medButton4.y=display.contentHeight*.5
		medButton4:scale (.5,.5)
		sceneGroup:insert (medButton4)
		local function nextScene4 (lvl4)
        
        composer.gotoScene("match4", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
	   
		end
		medButton4:addEventListener("tap", nextScene4)
	else
		local medButton4 = display.newImage("Images/Levels/4r.png")
		medButton4.x=display.contentWidth*.25
		medButton4.y=display.contentHeight*.5
		medButton4:scale (.5,.5)
		sceneGroup:insert (medButton4)
	end


    if myData.settings.medLevel >= 5 then
		local medButton5 = display.newImage("Images/Levels/5g.png")
		medButton5.x=display.contentWidth*.5
		medButton5.y=display.contentHeight*.5
		medButton5:scale (.5,.5)
		sceneGroup:insert (medButton5)
		local function nextScene5 (lvl5)
        
       composer.gotoScene("match5", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
	   
		end
		medButton5:addEventListener("tap", nextScene5)
	else
		local medButton5 = display.newImage("Images/Levels/5r.png")
	    medButton5.x=display.contentWidth*.5
		medButton5.y=display.contentHeight*.5
		medButton5:scale (.5,.5)
		sceneGroup:insert (medButton5)
	end

    
    if myData.settings.medLevel >= 6 then
		local medButton6 = display.newImage("Images/Levels/6g.png")
	    medButton6.x=display.contentWidth*.75
		medButton6.y=display.contentHeight*.5
		medButton6:scale (.5,.5)
		sceneGroup:insert (medButton6)
		local function nextScene6 (lvl6)
        
       composer.gotoScene("match6", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
	   
		end
		medButton6:addEventListener("tap", nextScene6)
	else
		local medButton6 = display.newImage("Images/Levels/6r.png")
	    medButton6.x=display.contentWidth*.75
		medButton6.y=display.contentHeight*.5
		medButton6:scale (.5,.5)
		sceneGroup:insert (medButton6)
	end


    if myData.settings.medLevel >= 7 then
		local medButton7 = display.newImage("Images/Levels/7g.png")
	    medButton7.x=display.contentWidth*.25
		medButton7.y=display.contentHeight*.7
		medButton7:scale (.5,.5)
		sceneGroup:insert (medButton7)
		local function nextScene7 (lvl7)
        
       composer.gotoScene("match7", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
	   
		end
		medButton7:addEventListener("tap", nextScene7)
	
	else
		local medButton7 = display.newImage("Images/Levels/7r.png")
	    medButton7.x=display.contentWidth*.25
		medButton7.y=display.contentHeight*.7
		medButton7:scale (.5,.5)
		sceneGroup:insert (medButton7)
	end

	
    if myData.settings.medLevel >= 8 then
		local medButton8 = display.newImage("Images/Levels/8g.png")
		medButton8.x=display.contentWidth*.5
		medButton8.y=display.contentHeight*.7
		medButton8:scale (.5,.5)
		sceneGroup:insert (medButton8)
		local function nextScene8 (lvl8)
        
       composer.gotoScene("match8", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
	   
		end
		medButton8:addEventListener("tap", nextScene8)
	else
		local medButton8 = display.newImage("Images/Levels/8r.png")
		medButton8.x=display.contentWidth*.5
		medButton8.y=display.contentHeight*.7
		medButton8:scale (.5,.5)
		sceneGroup:insert (medButton8)
	end
	
    
	if myData.settings.medLevel >= 9 then
		local medButton9 = display.newImage("Images/Levels/9g.png")
		medButton9.x=display.contentWidth*.75
		medButton9.y=display.contentHeight*.7
		medButton9:scale (.5,.5)
		sceneGroup:insert (medButton9)
		local function nextScene9 (lvl9)
        
       composer.gotoScene("match9", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
	   
		end
		medButton9:addEventListener("tap", nextScene9)
	else
		local medButton9 = display.newImage("Images/Levels/9r.png")
		medButton9.x=display.contentWidth*.75
		medButton9.y=display.contentHeight*.7
		medButton9:scale (.5,.5)
		sceneGroup:insert (medButton9)
	end
	
	    -- Create the widget
    local doneButton = widget.newButton({
        id = "button1",
        label = "Return to Menu",
        width = 200,
        height = 32,
        onEvent = handleButtonEvent
    })
    doneButton.x = display.contentCenterX 
    doneButton.y = display.contentHeight * .85
    sceneGroup:insert( doneButton )
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
