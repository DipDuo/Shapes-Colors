
 --load composer & setup scene
local composer = require ("composer")
local scene = composer.newScene()

---------------------------------------------------------------------------------------------------------------------

function scene:create(event)
	local sceneGroup = self.view
	_G.frameIndexes = {}  -- table for global variables, to store frameIndex values
	centerX = display.contentWidth/2
	centerY = display.contentHeight/2
	--background
	local background = display.newRect(display.contentCenterX, display.contentCenterY, display.contentWidth,display.contentHeight)
	background:setFillColor(119/255, 136/255, 153/255)  --light slate gray
	sceneGroup:insert (background)

	local myText2 = display.newText ("Remember this!",0,0, nil, 45)	--adds tap function to screen
	myText2:setFillColor(1,0,0)
	myText2.x=display.contentCenterX
	myText2.y=display.contentCenterY-200
	sceneGroup:insert (myText2)

	--require sprite lua
	local sheetInfo = require("sprite")


	--sprite sheet variables
	local total_frames = 77        --number of frames on sprite sheet
	

	local options =                --defines the height & width of frames from sprite sheet
	{
		width = 75,
		height = 75,
		numFrames = total_frames
	}

	local sheet = graphics.newImageSheet( "Images/sprite.png", sheetInfo:getSheet ())
	local image_group = display.newGroup()
	
	local frameIndexMatch = math.random( total_frames )

	local frameIndexMatch2 = math.random( total_frames )
	if frameIndexMatch == frameIndexMatch2 then
		frameIndexMatch2=frameIndexMatch2+1
	end

	local frameIndexMatch3 = math.random( total_frames )
	if frameIndexMatch == frameIndexMatch3 or frameIndexMatch2 == frameIndexMatch3 then
		frameIndexMatch3=frameIndexMatch3+1
	end

	local frameIndexMatch4 = math.random( total_frames )
	if frameIndexMatch == frameIndexMatch4 or frameIndexMatch2 == frameIndexMatch4 or frameIndexMatch3 == frameIndexMatch4 then
		frameIndexMatch4=frameIndexMatch4+1
	end

	local frameIndexMatch5 = math.random( total_frames )
	if frameIndexMatch == frameIndexMatch5 or frameIndexMatch2 == frameIndexMatch5 or frameIndexMatch3 == frameIndexMatch5 or frameIndexMatch4 == frameIndexMatch5 then
		frameIndexMatch5=frameIndexMatch5+1
	end

	local frameIndexMatch6 = math.random( total_frames )
	if frameIndexMatch == frameIndexMatch6 or frameIndexMatch2 == frameIndexMatch6 or frameIndexMatch3 == frameIndexMatch6 or frameIndexMatch4 == frameIndexMatch6 or frameIndexMatch5 == frameIndexMatch6 then
		frameIndexMatch6=frameIndexMatch6+1
	end

	local frameIndexMatch7 = math.random( total_frames )
	if frameIndexMatch == frameIndexMatch7 or frameIndexMatch2 == frameIndexMatch7 or frameIndexMatch3 == frameIndexMatch7 or frameIndexMatch4 == frameIndexMatch7 or frameIndexMatch5 == frameIndexMatch7 or frameIndexMatch6 == frameIndexMatch7 then
		frameIndexMatch7=frameIndexMatch7+1
	end
	
	spawnObjMatch = display.newImage( sheet, frameIndexMatch)  -- setting 1st spawnObjMatch to frameIndex # to pass to game
	table.insert (_G.frameIndexes, frameIndexMatch)            -- insert 1st indexFrame # to global table (frameIndexes)
	
		spawnObjMatch.x = display.contentWidth/2  
		spawnObjMatch.y = display.contentHeight/2

	sceneGroup:insert (spawnObjMatch)

	spawnObjMatch2 = display.newImage( sheet, frameIndexMatch2) -- setting 2nd spawnObjMatch to frameIndex # to pass to game
	table.insert (_G.frameIndexes, frameIndexMatch2)            -- insert 2nd indexFrame # to global table (frameIndexes)

		spawnObjMatch2.x = display.contentWidth/2+100  
		spawnObjMatch2.y = display.contentHeight/2

	sceneGroup:insert (spawnObjMatch2)

	spawnObjMatch3 = display.newImage( sheet, frameIndexMatch3) -- setting 2nd spawnObjMatch to frameIndex # to pass to game
	table.insert (_G.frameIndexes, frameIndexMatch3)            -- insert 2nd indexFrame # to global table (frameIndexes)

		spawnObjMatch3.x = display.contentWidth/2-100
		spawnObjMatch3.y = display.contentHeight/2

	sceneGroup:insert (spawnObjMatch3)

	spawnObjMatch4 = display.newImage( sheet, frameIndexMatch4) -- setting 2nd spawnObjMatch to frameIndex # to pass to game
	table.insert (_G.frameIndexes, frameIndexMatch4)            -- insert 2nd indexFrame # to global table (frameIndexes)

		spawnObjMatch4.x = display.contentWidth/2-100
		spawnObjMatch4.y = display.contentHeight/2-100

	sceneGroup:insert (spawnObjMatch4)

	spawnObjMatch5 = display.newImage( sheet, frameIndexMatch5) -- setting 2nd spawnObjMatch to frameIndex # to pass to game
	table.insert (_G.frameIndexes, frameIndexMatch5)            -- insert 2nd indexFrame # to global table (frameIndexes)

		spawnObjMatch5.x = display.contentWidth/2
		spawnObjMatch5.y = display.contentHeight/2-100

	sceneGroup:insert (spawnObjMatch5)

	spawnObjMatch6 = display.newImage( sheet, frameIndexMatch6) -- setting 2nd spawnObjMatch to frameIndex # to pass to game
	table.insert (_G.frameIndexes, frameIndexMatch6)            -- insert 2nd indexFrame # to global table (frameIndexes)

		spawnObjMatch6.x = display.contentWidth/2+100
		spawnObjMatch6.y = display.contentHeight/2-100

	sceneGroup:insert (spawnObjMatch6)

	spawnObjMatch7 = display.newImage( sheet, frameIndexMatch7) -- setting 2nd spawnObjMatch to frameIndex # to pass to game
	table.insert (_G.frameIndexes, frameIndexMatch7)            -- insert 2nd indexFrame # to global table (frameIndexes)

		spawnObjMatch7.x = display.contentWidth/2-100
		spawnObjMatch7.y = display.contentHeight/2+100

	sceneGroup:insert (spawnObjMatch7)



	--creates 'tap' function to splash screen to continue to next scene
	local myText = display.newText ("Tap to Continue",0,0, nil, 25)	--adds tap function to screen
	myText:setFillColor(0,0,1)
	myText.x=display.contentCenterX
	myText.y=display.contentHeight-35
	sceneGroup:insert (myText)

	local function nextScene1 (easyLevel)
        
       composer.gotoScene("game7e", options) --the scene/level that tap function transitions to
    end

    background:addEventListener("tap", nextScene1)


end
------------------------------------------------------------------------------------------------------------------------

--show/hide/destroy functions for composer to function correctly
function scene:show( event )
    local sceneGroup = self.view

    if event.phase == "did" then
        composer.removeScene( "game6e" ) -- change string value to reflect game level that was just finished
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

-------------------------------------------------------------------------------------------------------------------------
--scene eventListeners

scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
return scene