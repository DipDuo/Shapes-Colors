
--load composer & setup scene
local composer=require("composer")
local scene = composer.newScene()
local myData = require ("myData")
local json = require( "json" )
composer.recycleOnSceneChange = true

-------------------------------------------------------------------------------------------------------
--load local variables for scene
local currentScore          -- used to hold the numeric value of the current score
local currentScoreDisplay   -- will be a display.newText() that draws the score on the screen
local levelText             -- will be a display.newText() to let you know what level you're on
local spawnTimer			-- used to stop/star spawn object timer
local gameTime
local correct = audio.loadSound("correct.wav")
local wrong = audio.loadSound("wrong.wav")
local music = audio.loadSound("music.mp3")

---------------------------------------------------------------------------------------------------------------
--load functions into scene
function scene:create (event)

	local sceneGroup = self.view

	if myData.settings.musicOn == true then
	    local backgroundMusicChannel = audio.play( music, { channel=1, loops=-1, fadein=5000 } )
	elseif myData.settings.musicOn == false then
		audio.stop()
	end

	--background
	local background = display.newImage( "Images/BkgdBlue.png", true )
	background.x = display.contentWidth / 2
	background.y = display.contentHeight / 2
	sceneGroup:insert (background)

	--set x & y center points
	local centerX=display.contentCenterX
	local centerY=display.contentCenterY
	local_W = display.contentWidth
	local_H = display.contentHeight

	--level text and fadeOut
    local thisLevel = myData.settings.currentLevel
    levelText = display.newText(myData.settings.currentLevel, 0, 0, native.systemFontBold, 48)
    transition.fadeOut( levelText, { time=5000 } )
    levelText:setFillColor( 0 )
    levelText.x = display.contentCenterX
    levelText.y = display.contentCenterY	
    sceneGroup:insert( levelText )

    levelText2 = display.newText(myData.settings.currentLevelName, 0, 0, native.systemFontBold, 48)
    transition.fadeOut( levelText2, { time=5000 } )
    levelText2:setFillColor( 0 )
    levelText2.x = display.contentCenterX
    levelText2.y = display.contentCenterY-100
    sceneGroup:insert( levelText2 )

    --add score display top right corner
   	currentScoreDisplay = display.newText("000000", display.contentWidth - 50, 10, native.systemFont, 16 )
    currentScoreDisplay:toFront()
    --sceneGroup:insert( currentScoreDisplay )
    


---------------------------------------------------------------------------------------------------------------
	--add physics, start and set gravity

	local physics = require( "physics" )
	physics.start()
	physics.setGravity( 0, 0)


-------------------------------------------------------------------------------
--create sides to keep objects in area of play

	-- locate sides easier
	local yCenter=display.contentHeight/2

	-- create side borders
	local leftWall=display.newRect(-5,-100, 10, 5000)
	leftWall:setFillColor (1,0,0)
	sceneGroup:insert (leftWall)
	local rightWall=display.newRect(display.contentWidth +5  ,-100, 10, 5000)
	rightWall:setFillColor (1,0,0)
	sceneGroup:insert (rightWall)
	local bottomWall=display.newRect (0, display.contentHeight+10, 1000, 10 )
	bottomWall:setFillColor(1,0,0)
	sceneGroup:insert (bottomWall)
	local topWall=display.newRect (0, -10, 1000, 10 )
	topWall:setFillColor(1,0,0)
	sceneGroup:insert (topWall)

	-- add sides to phyics
	physics.addBody(leftWall, "static")
	physics.addBody(rightWall, "static")
	physics.addBody(bottomWall, "static")
	physics.addBody(topWall, "static")


-------------------------------------------------------------------------------------------------------------

	--require sprite lua
	local sheetInfo = require("sprite")
	
	--sprite sheet variables
	local total_frames = 77       --number of frames on sprite sheet

	local options =                --defines the height & width of frames from sprite sheet
	{
		width = 75,
		height = 75,
		numFrames = total_frames
	}

	local sheet = graphics.newImageSheet( "sprite.png", sheetInfo:getSheet ())
	local image_group = display.newGroup()
	--spawn object function
	function spawn ( event )

		
		if image_group.numChildren >= 25 then
			image_group[ 1 ]:removeSelf() -- Limit the number of spawnObjects on screen.	
		end

		local frameIndex = math.random( total_frames )

		local spawnObj = display.newImage( sheet, frameIndex )
		image_group:insert( spawnObj )
		
		spawnObj.x =math.random(display.contentWidth)   -- uses math.random for x value of spawn objects
		spawnObj.y = math.random(display.contentHeight)                                  
		spawnObj.rotation = 360 
		spawnObj.index = frameIndex

		physics.addBody( spawnObj, "dynamic", { density = 8,
												friction = 0,
												bounce = .1,
												} )
	
		sceneGroup:insert (image_group)


		function spawnObj:tap(self, event)--adding touch event to remove spawned objects

			timer.performWithDelay (1, function () spawnObj:removeSelf() end)
			if spawnObj.index == _G.frameIndexes[1] then
				if myData.settings.soundOn == true then
					audio.play (correct)
				end
	        	myData.levelScore = myData.levelScore + 50
	        	myData.settings.bestScore = myData.levelScore
	        	currentScoreDisplay.text = string.format( "%06d", myData.levelScore )
	        	timer.performWithDelay(500, function() composer.gotoScene("nextlevel1e", "fade", 500); end)
	        else
	        	if myData.settings.soundOn == true then
	        		audio.play(wrong)
	        	end
	        	timer.performWithDelay(500, function() composer.gotoScene("gameover", "fade", 500); end)
	        	myData.levelScore=0 --resets levelscore to 0 if user loses
	        end

		return true
		end
		spawnObj:addEventListener("tap", spawnObj)
	end
	    
	spawnTimer=timer.performWithDelay( 300, spawn, 0 )-- determines the spawn rate of objects	
------------------------------------------------------------------------------------------------------------------
	

-----------------------------------------------------------------------------------------------------------------
	--add Time Bar to scene

	--Show a basic green status bar
	timeBar = display.newRect( 0, 0, 10, 10 )
	timeBar.anchorX = 0
	timeBar.x = 10
	timeBar.y = 20
	timeBar:setFillColor(0,1,0)
	timeBar:toFront()
	--sceneGroup:insert (timeBar)

	--Make the bar shrink over time
	local function loseTime (event)
		timeBar.width = timeBar.width + 1 -- (+/-)changes direction number changes speed
		timeBar.anchorX = 0
		timeBar.x = 10

		--change status bar color to orange at certain point
		if timeBar.width == 200 then
			timeBar:setFillColor(255/255,69/255,0)

		--change status bar color to red at certian point
		elseif timeBar.width == 300 then
			timeBar:setFillColor(1,0,0)

		elseif timeBar.width == display.contentWidth -30  then
			timer.cancel(spawnTimer)
			timer.performWithDelay(1000, function() composer.gotoScene("gameover", "fade", 500); end)
			
		end
	end
	gameTime=timer.performWithDelay(1000, loseTime, display.contentWidth -30)
end

	
-------------------------------------------------------------------------------------------------------------

--show/hide/destroy functions for composer to function correctly
function scene:show (event)
	local sceneGroup = self.view

	if event.phase == "did" then
		currentScoreDisplay.text = string.format( "%06d", myData.levelScore )
    end
    composer.removeHidden()
end

function scene:hide (event)
	local sceneGroup = self.view
	if event.phase == "will" then
	audio.stop()
	timeBar:removeSelf()
	currentScoreDisplay:removeSelf()
	timer.cancel(spawnTimer)
	timer.cancel(gameTime)
	end
end

function scene:destroy (event)
	audio.stop()
	timer.cancel(spawnTimer)
	timer.cancel(gameTime)
	local sceneGroup = self.view
end


-----------------------------------------------------------------------------------------------------------------
--scene eventListeners
scene:addEventListener("create", scene)
scene:addEventListener("show", scene)
scene:addEventListener("hide", scene)
scene:addEventListener("destroy", scene)
return scene

