
 --load composer & setup scene
local composer = require ("composer")
local myData = require ("myData")
local scene = composer.newScene()
local splash
centerX = display.contentWidth/2
centerY = display.contentHeight/2


-----------------------------------------------------------------------------

--creates splash scene
function scene:create(event)

	local sceneGroup = self.view
	splash=display.newImage("Splash.png", true)  -- loads image for splash screen
	splash.x=centerX
	splash.y=centerY
	sceneGroup:insert (splash)

--creates 'tap' function to splash screen to continue to next scene
	local myText = display.newText ("Tap to Continue",0,0, nil, 25)	--adds tap function to screen
	myText:setFillColor(225,0,0)
	myText.x=display.contentCenterX
	myText.y=display.contentHeight-35
	sceneGroup:insert (myText)

	local function nextScene(menu)
		
		composer.gotoScene("menu") --the scene/level that tap function transitions to
	end

	splash:addEventListener("tap", nextScene)
end

--------------------------------------------------------------------------------------------------------------

--functions for composer to function correctly
function scene:show (event)
end

function scene:hide (event)
end

function scene:destroy (event)
local sceneGroup = self.view
end

scene:addEventListener("create", scene)
scene:addEventListener("show", scene)
scene:addEventListener("hide", scene)
scene:addEventListener("destroy", scene)
return scene