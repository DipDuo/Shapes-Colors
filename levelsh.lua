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
        composer.gotoScene("menu", { effect = "crossFade", time = 333 })
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
    local title = display.newText("Hard Levels", 100, 32, "Fonts/HemiHead.tff", 32 )
    title.x = display.contentCenterX
    title.y = display.contentHeight * .07
    title:setFillColor( 154/255, 205/255, 50/255)
    sceneGroup:insert( title )

	--Goes through all the buttons
	--HARD BUTTON 1
	
	local hardButton1 = display.newCircle( display.contentWidth*.2, display.contentHeight*.3, 40)
    hardButton1:setFillColor( 0,1,0, .5	)
    sceneGroup:insert (hardButton1)
	
	local function nextScene1 (lvl1)
        
       composer.gotoScene("match1h", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
	   
    end
	hardButton1:addEventListener("tap", nextScene1)
	
	
		--If statements needed for these to decide whether or not the level is unlocked.
		
	--HARD BUTTON 2
    
	local hardButton2 = display.newCircle( display.contentWidth*.5, display.contentHeight*.3, 40)
	if myData.settings.hardLevel >= 2 then
		hardButton2:setFillColor( 0,1,0, .5	)
		local function nextScene2 (lvl2)
			
		composer.gotoScene("match2h", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
	   
		end
		hardButton2:addEventListener("tap", nextScene2)
	else
		hardButton2:setFillColor( 1,0,0, .5	)
	end
	sceneGroup:insert (hardButton2)
		
		
	--HARD BUTTON 3
		
	local hardButton3 = display.newCircle( display.contentWidth*.8, display.contentHeight*.3, 40)
	if myData.settings.hardLevel >= 3 then
		hardButton3:setFillColor( 0,1,0, .5	)
		local function nextScene3 (lvl3)
			
		composer.gotoScene("match3h", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
	   
		end
		hardButton3:addEventListener("tap", nextScene3)
	else
		hardButton3:setFillColor( 1,0,0, .5	)
	end
		
	sceneGroup:insert (hardButton3)
	
	
	--HARD BUTTON 4
	
	local hardButton4 = display.newCircle( display.contentWidth*.2, display.contentHeight*.5, 40)
	if myData.settings.hardLevel >= 4 then
		hardButton4:setFillColor( 0,1,0, .5	)
		local function nextScene4 (lvl4)
			
		composer.gotoScene("match4h", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
	   
		end
		hardButton4:addEventListener("tap", nextScene4)
	else
		hardButton4:setFillColor( 1,0,0, .5	)
	end
	sceneGroup:insert (hardButton4)
	

    --HARD BUTTON 5

	local hardButton5 = display.newCircle( display.contentWidth*.5, display.contentHeight*.5, 40)
	if myData.settings.hardLevel >= 5 then
		hardButton5:setFillColor( 0,1,0, .5	)
		local function nextScene5 (lvl5)
			
		composer.gotoScene("match5h", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
	   
		end
		hardButton5:addEventListener("tap", nextScene5)
	else
		hardButton5:setFillColor( 1,0,0, .5	)
	end
	sceneGroup:insert (hardButton5)
	
	
	--HARD BUTTON 6
	
	local hardButton6 = display.newCircle( display.contentWidth*.8, display.contentHeight*.5, 40)
	if myData.settings.hardLevel >= 6 then
		hardButton6:setFillColor( 0,1,0, .5	)
		local function nextScene6 (lvl6)
			
		composer.gotoScene("match6h", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
	   
		end
		hardButton6:addEventListener("tap", nextScene6)
	else
		hardButton6:setFillColor( 1,0,0, .5	)
	end
	sceneGroup:insert (hardButton6)
	
	
	--HARD BUTTON 7
	
	local hardButton7 = display.newCircle( display.contentWidth*.2, display.contentHeight*.7, 40)
	if myData.settings.hardLevel >= 7 then
		hardButton7:setFillColor( 0,1,0, .5	)
		local function nextScene7 (lvl7)
			
		composer.gotoScene("match7h", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
	   
		end
		hardButton7:addEventListener("tap", nextScene7)
	else
		hardButton7:setFillColor( 1,0,0, .5	)
	end
	sceneGroup:insert (hardButton7)
	
	
	--HARD BUTTON 8
	
	local hardButton8 = display.newCircle( display.contentWidth*.5, display.contentHeight*.7, 40)
	if myData.settings.hardLevel >= 8 then
		hardButton8:setFillColor( 0,1,0, .5	)
		local function nextScene8 (lvl8)
			
		composer.gotoScene("match8h", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
	   
		end
		hardButton8:addEventListener("tap", nextScene8)
	else
		hardButton8:setFillColor( 1,0,0, .5	)
	end
	sceneGroup:insert (hardButton8)
	
	
	--HARD BUTTON 9
	
	local hardButton9 = display.newCircle( display.contentWidth*.8, display.contentHeight*.7, 40)
	if myData.settings.hardLevel >= 9 then
		hardButton9:setFillColor( 0,1,0, .5	)
		local function nextScene9 (lvl9)
			
		composer.gotoScene("match9h", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
	   
		end
		hardButton9:addEventListener("tap", nextScene9)
	else
		hardButton9:setFillColor( 1,0,0, .5	)
	end
	sceneGroup:insert (hardButton9)
	
	local hardButton1Text = display.newText("1", 100, 32, "Fonts/SuiGeneris.tff", 25 )
	hardButton1Text.x = display.contentWidth * .2
	hardButton1Text.y = display.contentHeight * .3
	hardButton1Text:setFillColor( 1, 1, 1 )
	sceneGroup:insert( hardButton1Text )
		
	local hardButton2Text = display.newText("2", 100, 32, "Fonts/SuiGeneris.tff", 25 )
	hardButton2Text.x = display.contentWidth * .5
	hardButton2Text.y = display.contentHeight * .3
	hardButton2Text:setFillColor( 1, 1, 1 )
	sceneGroup:insert( hardButton2Text )

	local hardButton3Text = display.newText("3", 100, 32, "Fonts/SuiGeneris.tff", 25 )
	hardButton3Text.x = display.contentWidth * .8
	hardButton3Text.y = display.contentHeight * .3
	hardButton3Text:setFillColor( 1, 1, 1 )
	sceneGroup:insert( hardButton3Text )
	
	local hardButton4Text = display.newText("4", 100, 32, "Fonts/SuiGeneris.tff", 25 )
	hardButton4Text.x = display.contentWidth * .2
	hardButton4Text.y = display.contentHeight * .5
	hardButton4Text:setFillColor( 1, 1, 1 )
	sceneGroup:insert( hardButton4Text )
	
	local hardButton5Text = display.newText("5", 100, 32, "Fonts/SuiGeneris.tff", 25 )
	hardButton5Text.x = display.contentWidth * .5
	hardButton5Text.y = display.contentHeight * .5
	hardButton5Text:setFillColor( 1, 1, 1 )
	sceneGroup:insert( hardButton5Text )
	
	local hardButton6Text = display.newText("6", 100, 32, "Fonts/SuiGeneris.tff", 25 )
	hardButton6Text.x = display.contentWidth * .8
	hardButton6Text.y = display.contentHeight * .5
	hardButton6Text:setFillColor( 1, 1, 1 )
	sceneGroup:insert( hardButton6Text )
	
	local hardButton7Text = display.newText("7", 100, 32, "Fonts/SuiGeneris.tff", 25 )
	hardButton7Text.x = display.contentWidth * .2
	hardButton7Text.y = display.contentHeight * .7
	hardButton7Text:setFillColor( 1, 1, 1 )
	sceneGroup:insert( hardButton7Text )
	
	local hardButton8Text = display.newText("8", 100, 32, "Fonts/SuiGeneris.tff", 25 )
	hardButton8Text.x = display.contentWidth * .5
	hardButton8Text.y = display.contentHeight * .7
	hardButton8Text:setFillColor( 1, 1, 1 )
	sceneGroup:insert( hardButton8Text )
	
	local hardButton9Text = display.newText("9", 100, 32, "Fonts/SuiGeneris.tff", 25 )
	hardButton9Text.x = display.contentWidth * .8
	hardButton9Text.y = display.contentHeight * .7
	hardButton9Text:setFillColor( 1, 1, 1 )
	sceneGroup:insert( hardButton9Text )
	
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
