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

    local title = display.newText("Hard Levels", 100, 32, native.systemFontBold, 32 )
    title.x = display.contentCenterX
    title.y = display.contentHeight*.1
    title:setFillColor( 154/255, 205/255, 50/255)
    sceneGroup:insert( title )

	--Goes through all the buttons
	local hardButton1 = display.newImage("Images/Levels/1g.png")
    hardButton1.x=display.contentWidth*.25
    hardButton1.y=display.contentHeight*.3
    hardButton1:scale (.5,.5)
    sceneGroup:insert (hardButton1)
	
	local function nextScene1 (lvl1)
        
       composer.gotoScene("match1h", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
	   
    end
	hardButton1:addEventListener("tap", nextScene1)
	
	
		--If statements needed for these to decide whether or not the level is unlocked.
    if myData.settings.hardLevel >= 2 then
		local hardButton2 = display.newImage("Images/Levels/2g.png")
		hardButton2.x=display.contentWidth*.5
		hardButton2.y=display.contentHeight*.3
		hardButton2:scale (.5,.5)
		sceneGroup:insert (hardButton2)
		local function nextScene2 (lvl2)
    
        composer.gotoScene("match2h", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
			
		end
		hardButton2:addEventListener("tap", nextScene2)
	else
		local hardButton2 = display.newImage("Images/Levels/2r.png")
		hardButton2.x=display.contentWidth*.5
		hardButton2.y=display.contentHeight*.3
		hardButton2:scale (.5,.5)
		sceneGroup:insert (hardButton2)
	end
    
    if myData.settings.hardLevel >= 3 then
		local hardButton3 = display.newImage("Images/Levels/3g.png")
		hardButton3.x=display.contentWidth*.75
		hardButton3.y=display.contentHeight*.3
		hardButton3:scale (.5,.5)
		sceneGroup:insert (hardButton3)
		local function nextScene3 (lvl3)
        
       composer.gotoScene("match3h", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
		
		end
		hardButton3:addEventListener("tap", nextScene3)
	
	else
		local hardButton3 = display.newImage("Images/Levels/3r.png")
		hardButton3.x=display.contentWidth*.75
		hardButton3.y=display.contentHeight*.3
		hardButton3:scale (.5,.5)
		sceneGroup:insert (hardButton3)
	end

	
	if myData.settings.hardLevel >= 4 then
		local hardButton4 = display.newImage("Images/Levels/4g.png")
		hardButton4.x=display.contentWidth*.25
		hardButton4.y=display.contentHeight*.5
		hardButton4:scale (.5,.5)
		sceneGroup:insert (hardButton4)
		local function nextScene4 (lvl4)
        
        composer.gotoScene("match4h", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
	   
		end
		hardButton4:addEventListener("tap", nextScene4)
	else
		local hardButton4 = display.newImage("Images/Levels/4r.png")
		hardButton4.x=display.contentWidth*.25
		hardButton4.y=display.contentHeight*.5
		hardButton4:scale (.5,.5)
		sceneGroup:insert (hardButton4)
	end


    if myData.settings.hardLevel >= 5 then
		local hardButton5 = display.newImage("Images/Levels/5g.png")
		hardButton5.x=display.contentWidth*.5
		hardButton5.y=display.contentHeight*.5
		hardButton5:scale (.5,.5)
		sceneGroup:insert (hardButton5)
		local function nextScene5 (lvl5)
        
       composer.gotoScene("match5h", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
	   
		end
		hardButton5:addEventListener("tap", nextScene5)
	else
		local hardButton5 = display.newImage("Images/Levels/5r.png")
	    hardButton5.x=display.contentWidth*.5
		hardButton5.y=display.contentHeight*.5
		hardButton5:scale (.5,.5)
		sceneGroup:insert (hardButton5)
	end

    
    if myData.settings.hardLevel >= 6 then
		local hardButton6 = display.newImage("Images/Levels/6g.png")
	    hardButton6.x=display.contentWidth*.75
		hardButton6.y=display.contentHeight*.5
		hardButton6:scale (.5,.5)
		sceneGroup:insert (hardButton6)
		local function nextScene6 (lvl6)
        
       composer.gotoScene("match6h", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
	   
		end
		hardButton6:addEventListener("tap", nextScene6)
	else
		local hardButton6 = display.newImage("Images/Levels/6r.png")
	    hardButton6.x=display.contentWidth*.75
		hardButton6.y=display.contentHeight*.5
		hardButton6:scale (.5,.5)
		sceneGroup:insert (hardButton6)
	end


    if myData.settings.hardLevel >= 7 then
		local hardButton7 = display.newImage("Images/Levels/7g.png")
	    hardButton7.x=display.contentWidth*.25
		hardButton7.y=display.contentHeight*.7
		hardButton7:scale (.5,.5)
		sceneGroup:insert (hardButton7)
		local function nextScene7 (lvl7)
        
       composer.gotoScene("match7h", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
	   
		end
		hardButton7:addEventListener("tap", nextScene7)
	
	else
		local hardButton7 = display.newImage("Images/Levels/7r.png")
	    hardButton7.x=display.contentWidth*.25
		hardButton7.y=display.contentHeight*.7
		hardButton7:scale (.5,.5)
		sceneGroup:insert (hardButton7)
	end

	
    if myData.settings.hardLevel >= 8 then
		local hardButton8 = display.newImage("Images/Levels/8g.png")
		hardButton8.x=display.contentWidth*.5
		hardButton8.y=display.contentHeight*.7
		hardButton8:scale (.5,.5)
		sceneGroup:insert (hardButton8)
		local function nextScene8 (lvl8)
        
       composer.gotoScene("match8h", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
	   
		end
		hardButton8:addEventListener("tap", nextScene8)
	else
		local hardButton8 = display.newImage("Images/Levels/8r.png")
		hardButton8.x=display.contentWidth*.5
		hardButton8.y=display.contentHeight*.7
		hardButton8:scale (.5,.5)
		sceneGroup:insert (hardButton8)
	end
	
    
	if myData.settings.hardLevel >= 9 then
		local hardButton9 = display.newImage("Images/Levels/9g.png")
		hardButton9.x=display.contentWidth*.75
		hardButton9.y=display.contentHeight*.7
		hardButton9:scale (.5,.5)
		sceneGroup:insert (hardButton9)
		local function nextScene9 (lvl9)
        
       composer.gotoScene("match9h", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
	   
		end
		hardButton9:addEventListener("tap", nextScene9)
	else
		local hardButton9 = display.newImage("Images/Levels/9r.png")
		hardButton9.x=display.contentWidth*.75
		hardButton9.y=display.contentHeight*.7
		hardButton9:scale (.5,.5)
		sceneGroup:insert (hardButton9)
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
