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

    local title = display.newText("Easy Levels", 100, 32, native.systemFontBold, 32 )
    title.x = display.contentCenterX
    title.y = display.contentHeight*.1
    title:setFillColor( 154/255, 205/255, 50/255)
    sceneGroup:insert( title )

	--Goes through all the buttons
	local easyButton1 = display.newImage("Images/Levels/1g.png",true)
    easyButton1.x=display.contentWidth*.25
    easyButton1.y=display.contentHeight*.3
    easyButton1:scale (.5,.5)
    sceneGroup:insert (easyButton1)
	
	local function nextScene1 (lvl1)
        
       composer.gotoScene("match1e", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
	   
    end
	easyButton1:addEventListener("tap", nextScene1)
	
	
		--If statements needed for these to decide whether or not the level is unlocked.
    if myData.settings.easyLevel >= 2 then
		local easyButton2 = display.newImage("Images/Levels/2g.png")
		easyButton2.x=display.contentWidth*.5
		easyButton2.y=display.contentHeight*.3
		easyButton2:scale (.5,.5)
		sceneGroup:insert (easyButton2)
		local function nextScene2 (lvl2)
    
        composer.gotoScene("match2e", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
			
		end
		easyButton2:addEventListener("tap", nextScene2)
	else
		local easyButton2 = display.newImage("Images/Levels/2r.png")
		easyButton2.x=display.contentWidth*.5
		easyButton2.y=display.contentHeight*.3
		easyButton2:scale (.5,.5)
		sceneGroup:insert (easyButton2)
	end
    
    if myData.settings.easyLevel >= 3 then
		local easyButton3 = display.newImage("Images/Levels/3g.png")
		easyButton3.x=display.contentWidth*.75
		easyButton3.y=display.contentHeight*.3
		easyButton3:scale (.5,.5)
		sceneGroup:insert (easyButton3)
		local function nextScene3 (lvl3)
        
       composer.gotoScene("match3e", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
		
		end
		easyButton3:addEventListener("tap", nextScene3)
	
	else
		local easyButton3 = display.newImage("Images/Levels/3r.png")
		easyButton3.x=display.contentWidth*.75
		easyButton3.y=display.contentHeight*.3
		easyButton3:scale (.5,.5)
		sceneGroup:insert (easyButton3)
	end

	
	if myData.settings.easyLevel >= 4 then
		local easyButton4 = display.newImage("Images/Levels/4g.png")
		easyButton4.x=display.contentWidth*.25
		easyButton4.y=display.contentHeight*.5
		easyButton4:scale (.5,.5)
		sceneGroup:insert (easyButton4)
		local function nextScene4 (lvl4)
        
        composer.gotoScene("match4e", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
	   
		end
		easyButton4:addEventListener("tap", nextScene4)
	else
		local easyButton4 = display.newImage("Images/Levels/4r.png")
		easyButton4.x=display.contentWidth*.25
		easyButton4.y=display.contentHeight*.5
		easyButton4:scale (.5,.5)
		sceneGroup:insert (easyButton4)
	end


    if myData.settings.easyLevel >= 5 then
		local easyButton5 = display.newImage("Images/Levels/5g.png")
		easyButton5.x=display.contentWidth*.5
		easyButton5.y=display.contentHeight*.5
		easyButton5:scale (.5,.5)
		sceneGroup:insert (easyButton5)
		local function nextScene5 (lvl5)
        
       composer.gotoScene("match5e", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
	   
		end
		easyButton5:addEventListener("tap", nextScene5)
	else
		local easyButton5 = display.newImage("Images/Levels/5r.png")
	    easyButton5.x=display.contentWidth*.5
		easyButton5.y=display.contentHeight*.5
		easyButton5:scale (.5,.5)
		sceneGroup:insert (easyButton5)
	end

    
    if myData.settings.easyLevel >= 6 then
		local easyButton6 = display.newImage("Images/Levels/6g.png")
	    easyButton6.x=display.contentWidth*.75
		easyButton6.y=display.contentHeight*.5
		easyButton6:scale (.5,.5)
		sceneGroup:insert (easyButton6)
		local function nextScene6 (lvl6)
        
       composer.gotoScene("match6e", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
	   
		end
		easyButton6:addEventListener("tap", nextScene6)
	else
		local easyButton6 = display.newImage("Images/Levels/6r.png")
	    easyButton6.x=display.contentWidth*.75
		easyButton6.y=display.contentHeight*.5
		easyButton6:scale (.5,.5)
		sceneGroup:insert (easyButton6)
	end


    if myData.settings.easyLevel >= 7 then
		local easyButton7 = display.newImage("Images/Levels/7g.png")
	    easyButton7.x=display.contentWidth*.25
		easyButton7.y=display.contentHeight*.7
		easyButton7:scale (.5,.5)
		sceneGroup:insert (easyButton7)
		local function nextScene7 (lvl7)
        
       composer.gotoScene("match7e", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
	   
		end
		easyButton7:addEventListener("tap", nextScene7)
	
	else
		local easyButton7 = display.newImage("Images/Levels/7r.png")
	    easyButton7.x=display.contentWidth*.25
		easyButton7.y=display.contentHeight*.7
		easyButton7:scale (.5,.5)
		sceneGroup:insert (easyButton7)
	end

	
    if myData.settings.easyLevel >= 8 then
		local easyButton8 = display.newImage("Images/Levels/8g.png")
		easyButton8.x=display.contentWidth*.5
		easyButton8.y=display.contentHeight*.7
		easyButton8:scale (.5,.5)
		sceneGroup:insert (easyButton8)
		local function nextScene8 (lvl8)
        
       composer.gotoScene("match8e", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
	   
		end
		easyButton8:addEventListener("tap", nextScene8)
	else
		local easyButton8 = display.newImage("Images/Levels/8r.png")
		easyButton8.x=display.contentWidth*.5
		easyButton8.y=display.contentHeight*.7
		easyButton8:scale (.5,.5)
		sceneGroup:insert (easyButton8)
	end
	
    
	if myData.settings.easyLevel >= 9 then
		local easyButton9 = display.newImage("Images/Levels/9g.png")
		easyButton9.x=display.contentWidth*.75
		easyButton9.y=display.contentHeight*.7
		easyButton9:scale (.5,.5)
		sceneGroup:insert (easyButton9)
		local function nextScene9 (lvl9)
        
       composer.gotoScene("match9e", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
	   
		end
		easyButton9:addEventListener("tap", nextScene9)
	else
		local easyButton9 = display.newImage("Images/Levels/9r.png")
		easyButton9.x=display.contentWidth*.75
		easyButton9.y=display.contentHeight*.7
		easyButton9:scale (.5,.5)
		sceneGroup:insert (easyButton9)
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
