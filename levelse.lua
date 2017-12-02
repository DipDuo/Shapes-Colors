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
    local title = display.newText("Easy Levels", 100, 32, "Fonts/HemiHead.tff", 32 )
    title.x = display.contentCenterX
    title.y = display.contentHeight * .07
    title:setFillColor( 154/255, 205/255, 50/255)
    sceneGroup:insert( title )

	--Goes through all the buttons
	
	--EASY BUTTON 1
	
	local easyButton1 = display.newCircle( display.contentWidth*.2, display.contentHeight*.3, 40)
    easyButton1:setFillColor( 0,1,0, .5	)
    sceneGroup:insert (easyButton1)
	
	local function nextScene1 (lvl1)
        
       composer.gotoScene("match1e", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
	   
    end
	easyButton1:addEventListener("tap", nextScene1)
	
	
		--If statements needed for these to decide whether or not the level is unlocked.
		
	--EASY BUTTON 2
    
	local easyButton2 = display.newCircle( display.contentWidth*.5, display.contentHeight*.3, 40)
	if myData.settings.easyLevel >= 2 then
		easyButton2:setFillColor( 0,1,0, .5	)
		local function nextScene2 (lvl2)
			
		composer.gotoScene("match2e", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
	   
		end
		easyButton2:addEventListener("tap", nextScene2)
	else
		easyButton2:setFillColor( 1,0,0, .5	)
	end
	sceneGroup:insert (easyButton2)
		
		
	--EASY BUTTON 3
		
	local easyButton3 = display.newCircle( display.contentWidth*.8, display.contentHeight*.3, 40)
	if myData.settings.easyLevel >= 3 then
		easyButton3:setFillColor( 0,1,0, .5	)
		local function nextScene3 (lvl3)
			
		composer.gotoScene("match3e", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
	   
		end
		easyButton3:addEventListener("tap", nextScene3)
	else
		easyButton3:setFillColor( 1,0,0, .5	)
	end
		
	sceneGroup:insert (easyButton3)
	
	
	--EASY BUTTON 4
	
	local easyButton4 = display.newCircle( display.contentWidth*.2, display.contentHeight*.5, 40)
	if myData.settings.easyLevel >= 4 then
		easyButton4:setFillColor( 0,1,0, .5	)
		local function nextScene4 (lvl4)
			
		composer.gotoScene("match4e", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
	   
		end
		easyButton4:addEventListener("tap", nextScene4)
	else
		easyButton4:setFillColor( 1,0,0, .5	)
	end
	sceneGroup:insert (easyButton4)
	

    --EASY BUTTON 5

	local easyButton5 = display.newCircle( display.contentWidth*.5, display.contentHeight*.5, 40)
	if myData.settings.easyLevel >= 5 then
		easyButton5:setFillColor( 0,1,0, .5	)
		local function nextScene5 (lvl5)
			
		composer.gotoScene("match5e", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
	   
		end
		easyButton5:addEventListener("tap", nextScene5)
	else
		easyButton5:setFillColor( 1,0,0, .5	)
	end
	sceneGroup:insert (easyButton5)
	
	
	--EASY BUTTON 6
	
	local easyButton6 = display.newCircle( display.contentWidth*.8, display.contentHeight*.5, 40)
	if myData.settings.easyLevel >= 6 then
		easyButton6:setFillColor( 0,1,0, .5	)
		local function nextScene6 (lvl6)
			
		composer.gotoScene("match6e", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
	   
		end
		easyButton6:addEventListener("tap", nextScene6)
	else
		easyButton6:setFillColor( 1,0,0, .5	)
	end
	sceneGroup:insert (easyButton6)
	
	
	--EASY BUTTON 7
	
	local easyButton7 = display.newCircle( display.contentWidth*.2, display.contentHeight*.7, 40)
	if myData.settings.easyLevel >= 7 then
		easyButton7:setFillColor( 0,1,0, .5	)
		local function nextScene7 (lvl7)
			
		composer.gotoScene("match7e", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
	   
		end
		easyButton7:addEventListener("tap", nextScene7)
	else
		easyButton7:setFillColor( 1,0,0, .5	)
	end
	sceneGroup:insert (easyButton7)
	
	
	--EASY BUTTON 8
	
	local easyButton8 = display.newCircle( display.contentWidth*.5, display.contentHeight*.7, 40)
	if myData.settings.easyLevel >= 8 then
		easyButton8:setFillColor( 0,1,0, .5	)
		local function nextScene8 (lvl8)
			
		composer.gotoScene("match8e", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
	   
		end
		easyButton8:addEventListener("tap", nextScene8)
	else
		easyButton8:setFillColor( 1,0,0, .5	)
	end
	sceneGroup:insert (easyButton8)
	
	
	--EASY BUTTON 9
	
	local easyButton9 = display.newCircle( display.contentWidth*.8, display.contentHeight*.7, 40)
	if myData.settings.easyLevel >= 9 then
		easyButton9:setFillColor( 0,1,0, .5	)
		local function nextScene9 (lvl9)
			
		composer.gotoScene("match9e", { effect = "crossFade", time = 333 }) --the scene/level that tap function transitions to
	   
		end
		easyButton9:addEventListener("tap", nextScene9)
	else
		easyButton9:setFillColor( 1,0,0, .5	)
	end
	sceneGroup:insert (easyButton9)
	
	local easyButton1Text = display.newText("1", 100, 32, "Fonts/SuiGeneris.tff", 25 )
	easyButton1Text.x = display.contentWidth * .2
	easyButton1Text.y = display.contentHeight * .3
	easyButton1Text:setFillColor( 1, 1, 1 )
	sceneGroup:insert( easyButton1Text )
		
	local easyButton2Text = display.newText("2", 100, 32, "Fonts/SuiGeneris.tff", 25 )
	easyButton2Text.x = display.contentWidth * .5
	easyButton2Text.y = display.contentHeight * .3
	easyButton2Text:setFillColor( 1, 1, 1 )
	sceneGroup:insert( easyButton2Text )

	local easyButton3Text = display.newText("3", 100, 32, "Fonts/SuiGeneris.tff", 25 )
	easyButton3Text.x = display.contentWidth * .8
	easyButton3Text.y = display.contentHeight * .3
	easyButton3Text:setFillColor( 1, 1, 1 )
	sceneGroup:insert( easyButton3Text )
	
	local easyButton4Text = display.newText("4", 100, 32, "Fonts/SuiGeneris.tff", 25 )
	easyButton4Text.x = display.contentWidth * .2
	easyButton4Text.y = display.contentHeight * .5
	easyButton4Text:setFillColor( 1, 1, 1 )
	sceneGroup:insert( easyButton4Text )
	
	local easyButton5Text = display.newText("5", 100, 32, "Fonts/SuiGeneris.tff", 25 )
	easyButton5Text.x = display.contentWidth * .5
	easyButton5Text.y = display.contentHeight * .5
	easyButton5Text:setFillColor( 1, 1, 1 )
	sceneGroup:insert( easyButton5Text )
	
	local easyButton6Text = display.newText("6", 100, 32, "Fonts/SuiGeneris.tff", 25 )
	easyButton6Text.x = display.contentWidth * .8
	easyButton6Text.y = display.contentHeight * .5
	easyButton6Text:setFillColor( 1, 1, 1 )
	sceneGroup:insert( easyButton6Text )
	
	local easyButton7Text = display.newText("7", 100, 32, "Fonts/SuiGeneris.tff", 25 )
	easyButton7Text.x = display.contentWidth * .2
	easyButton7Text.y = display.contentHeight * .7
	easyButton7Text:setFillColor( 1, 1, 1 )
	sceneGroup:insert( easyButton7Text )
	
	local easyButton8Text = display.newText("8", 100, 32, "Fonts/SuiGeneris.tff", 25 )
	easyButton8Text.x = display.contentWidth * .5
	easyButton8Text.y = display.contentHeight * .7
	easyButton8Text:setFillColor( 1, 1, 1 )
	sceneGroup:insert( easyButton8Text )
	
	local easyButton9Text = display.newText("9", 100, 32, "Fonts/SuiGeneris.tff", 25 )
	easyButton9Text.x = display.contentWidth * .8
	easyButton9Text.y = display.contentHeight * .7
	easyButton9Text:setFillColor( 1, 1, 1 )
	sceneGroup:insert( easyButton9Text )
	
	
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
