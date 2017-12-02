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
    local title = display.newText("Medium Levels", 100, 32, "Fonts/HemiHead.tff", 32 )
    title.x = display.contentCenterX
    title.y = display.contentHeight * .07
    title:setFillColor( 154/255, 205/255, 50/255)
    sceneGroup:insert( title )

	--Goes through all the buttons
	
	--MED BUTTON 1
	
	local medButton1 = display.newCircle( display.contentWidth*.2, display.contentHeight*.3, 40)
    medButton1:setFillColor( 0,1,0, .5	)
    sceneGroup:insert (medButton1)
	
	local function nextScene1 (lvl1)
        
       composer.gotoScene("match1", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
	   
    end
	medButton1:addEventListener("tap", nextScene1)
	
	
		--If statements needed for these to decide whether or not the level is unlocked.
		
	--MED BUTTON 2
    
	local medButton2 = display.newCircle( display.contentWidth*.5, display.contentHeight*.3, 40)
	if myData.settings.medLevel >= 2 then
		medButton2:setFillColor( 0,1,0, .5	)
		local function nextScene2 (lvl2)
			
		composer.gotoScene("match2", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
	   
		end
		medButton2:addEventListener("tap", nextScene2)
	else
		medButton2:setFillColor( 1,0,0, .5	)
	end
	sceneGroup:insert (medButton2)
		
		
	--MED BUTTON 3
		
	local medButton3 = display.newCircle( display.contentWidth*.8, display.contentHeight*.3, 40)
	if myData.settings.medLevel >= 3 then
		medButton3:setFillColor( 0,1,0, .5	)
		local function nextScene3 (lvl3)
			
		composer.gotoScene("match3", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
	   
		end
		medButton3:addEventListener("tap", nextScene3)
	else
		medButton3:setFillColor( 1,0,0, .5	)
	end
		
	sceneGroup:insert (medButton3)
	
	
	--MED BUTTON 4
	
	local medButton4 = display.newCircle( display.contentWidth*.2, display.contentHeight*.5, 40)
	if myData.settings.medLevel >= 4 then
		medButton4:setFillColor( 0,1,0, .5	)
		local function nextScene4 (lvl4)
			
		composer.gotoScene("match4", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
	   
		end
		medButton4:addEventListener("tap", nextScene4)
	else
		medButton4:setFillColor( 1,0,0, .5	)
	end
	sceneGroup:insert (medButton4)
	

    --MED BUTTON 5

	local medButton5 = display.newCircle( display.contentWidth*.5, display.contentHeight*.5, 40)
	if myData.settings.medLevel >= 5 then
		medButton5:setFillColor( 0,1,0, .5	)
		local function nextScene5 (lvl5)
			
		composer.gotoScene("match5", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
	   
		end
		medButton5:addEventListener("tap", nextScene5)
	else
		medButton5:setFillColor( 1,0,0, .5	)
	end
	sceneGroup:insert (medButton5)
	
	
	--MED BUTTON 6
	
	local medButton6 = display.newCircle( display.contentWidth*.8, display.contentHeight*.5, 40)
	if myData.settings.medLevel >= 6 then
		medButton6:setFillColor( 0,1,0, .5	)
		local function nextScene6 (lvl6)
			
		composer.gotoScene("match6", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
	   
		end
		medButton6:addEventListener("tap", nextScene6)
	else
		medButton6:setFillColor( 1,0,0, .5	)
	end
	sceneGroup:insert (medButton6)
	
	
	--MED BUTTON 7
	
	local medButton7 = display.newCircle( display.contentWidth*.2, display.contentHeight*.7, 40)
	if myData.settings.medLevel >= 7 then
		medButton7:setFillColor( 0,1,0, .5	)
		local function nextScene7 (lvl7)
			
		composer.gotoScene("match7", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
	   
		end
		medButton7:addEventListener("tap", nextScene7)
	else
		medButton7:setFillColor( 1,0,0, .5	)
	end
	sceneGroup:insert (medButton7)
	
	
	--MED BUTTON 8
	
	local medButton8 = display.newCircle( display.contentWidth*.5, display.contentHeight*.7, 40)
	if myData.settings.medLevel >= 8 then
		medButton8:setFillColor( 0,1,0, .5	)
		local function nextScene8 (lvl8)
			
		composer.gotoScene("match8", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
	   
		end
		medButton8:addEventListener("tap", nextScene8)
	else
		medButton8:setFillColor( 1,0,0, .5	)
	end
	sceneGroup:insert (medButton8)
	
	
	--MED BUTTON 9
	
	local medButton9 = display.newCircle( display.contentWidth*.8, display.contentHeight*.7, 40)
	if myData.settings.medLevel >= 9 then
		medButton9:setFillColor( 0,1,0, .5	)
		local function nextScene9 (lvl9)
			
		composer.gotoScene("match9", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
	   
		end
		medButton9:addEventListener("tap", nextScene9)
	else
		medButton9:setFillColor( 1,0,0, .5	)
	end
	sceneGroup:insert (medButton9)
	
	local medButton1Text = display.newText("1", 100, 32, "Fonts/SuiGeneris.tff", 25 )
	medButton1Text.x = display.contentWidth * .2
	medButton1Text.y = display.contentHeight * .3
	medButton1Text:setFillColor( 1, 1, 1 )
	sceneGroup:insert( medButton1Text )
		
	local medButton2Text = display.newText("2", 100, 32, "Fonts/SuiGeneris.tff", 25 )
	medButton2Text.x = display.contentWidth * .5
	medButton2Text.y = display.contentHeight * .3
	medButton2Text:setFillColor( 1, 1, 1 )
	sceneGroup:insert( medButton2Text )

	local medButton3Text = display.newText("3", 100, 32, "Fonts/SuiGeneris.tff", 25 )
	medButton3Text.x = display.contentWidth * .8
	medButton3Text.y = display.contentHeight * .3
	medButton3Text:setFillColor( 1, 1, 1 )
	sceneGroup:insert( medButton3Text )
	
	local medButton4Text = display.newText("4", 100, 32, "Fonts/SuiGeneris.tff", 25 )
	medButton4Text.x = display.contentWidth * .2
	medButton4Text.y = display.contentHeight * .5
	medButton4Text:setFillColor( 1, 1, 1 )
	sceneGroup:insert( medButton4Text )
	
	local medButton5Text = display.newText("5", 100, 32, "Fonts/SuiGeneris.tff", 25 )
	medButton5Text.x = display.contentWidth * .5
	medButton5Text.y = display.contentHeight * .5
	medButton5Text:setFillColor( 1, 1, 1 )
	sceneGroup:insert( medButton5Text )
	
	local medButton6Text = display.newText("6", 100, 32, "Fonts/SuiGeneris.tff", 25 )
	medButton6Text.x = display.contentWidth * .8
	medButton6Text.y = display.contentHeight * .5
	medButton6Text:setFillColor( 1, 1, 1 )
	sceneGroup:insert( medButton6Text )
	
	local medButton7Text = display.newText("7", 100, 32, "Fonts/SuiGeneris.tff", 25 )
	medButton7Text.x = display.contentWidth * .2
	medButton7Text.y = display.contentHeight * .7
	medButton7Text:setFillColor( 1, 1, 1 )
	sceneGroup:insert( medButton7Text )
	
	local medButton8Text = display.newText("8", 100, 32, "Fonts/SuiGeneris.tff", 25 )
	medButton8Text.x = display.contentWidth * .5
	medButton8Text.y = display.contentHeight * .7
	medButton8Text:setFillColor( 1, 1, 1 )
	sceneGroup:insert( medButton8Text )
	
	local medButton9Text = display.newText("9", 100, 32, "Fonts/SuiGeneris.tff", 25 )
	medButton9Text.x = display.contentWidth * .8
	medButton9Text.y = display.contentHeight * .7
	medButton9Text:setFillColor( 1, 1, 1 )
	sceneGroup:insert( medButton9Text )
	
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
