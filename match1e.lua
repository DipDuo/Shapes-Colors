
 --load composer & setup scene
local composer = require ("composer")
local scene = composer.newScene()


-----------------------------------------------------------------------------



function scene:create(event)
	local sceneGroup = self.view
	_G.frameIndexes = {}

	centerX = display.contentWidth/2
	centerY = display.contentHeight/2
	--background
	local background = display.newRect(display.contentCenterX, display.contentCenterY, display.contentWidth,display.contentHeight)
	background:setFillColor(119/255, 136/255, 153/255)  --ligt slate gray
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

	local sheet = graphics.newImageSheet( "sprite.png", sheetInfo:getSheet ())
	local image_group = display.newGroup()
	
	local frameIndexMatch = math.random( total_frames )
	
	spawnObjMatch = display.newImage( sheet, frameIndexMatch)
	table.insert (_G.frameIndexes, frameIndexMatch)
		
		spawnObjMatch.x = display.contentWidth/2  
		spawnObjMatch.y = display.contentHeight/2

	sceneGroup:insert (spawnObjMatch)

	--creates 'tap' function to splash screen to continue to next scene
	local myText = display.newText ("Tap to Continue",0,0, nil, 25)	--adds tap function to screen
	myText:setFillColor(0,0,1)
	myText.x=display.contentCenterX
	myText.y=display.contentHeight-35
	sceneGroup:insert (myText)

	local function nextScene1 (easyLevel)
        
       composer.gotoScene("game1e", options) --the scene/level that tap function transitions to
    end

    background:addEventListener("tap", nextScene1)


end
--------------------------------------------------------------------------------------------------------------

--show/hide/destroy functions for composer to function correctly
function scene:show( event )
    local sceneGroup = self.view

    if event.phase == "did" then
        composer.removeScene( "game1e" ) 
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