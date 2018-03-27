local composer = require( "composer" )
local mui = require( "materialui.mui" )
local muiData = require( "materialui.mui-data" )
 
local scene = composer.newScene()
 
-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------
 
 
 
 
-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------
 
local bg
local button
local button2

function mudarCena(event)

composer.gotoScene("ListagemDatas", {effect = "slideLeft",time = 500})

end

function mudarCena2(event)

composer.gotoScene("TelaInicial", {effect = "slideRight",time = 500})

end

-- create()
function scene:create( event )
 
    local sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen
 

    bg = display.newRect(display.contentCenterX, display.contentCenterY, display.contentWidth, display.contentHeight*2)
    bg:setFillColor(1,1,1)
    sceneGroup:insert(bg)

    local logo = display.newImage("logo.jpg")
    logo.x = display.contentCenterX
    logo.y = display.contentCenterY/3
    sceneGroup:insert(logo)

    button = display.newRect(display.contentCenterX, display.contentCenterY*1.5, display.contentWidth/1.5, display.contentHeight/13 )
    button:setFillColor(0, 0.5, 1 )
    sceneGroup:insert(button)

    local buttext = display.newText("Ver Escalas de Cultos", display.contentCenterX, display.contentCenterY*1.5, "Impact", 20)
    buttext:setFillColor(0, 0, 0 )
    sceneGroup:insert(buttext)

    button:addEventListener("tap", mudarCena)

    button2 = display.newRect(display.contentCenterX, display.contentCenterY*1.7, display.contentWidth/1.5, display.contentHeight/13 )
    button2:setFillColor(0, 0.5, 1 )
    sceneGroup:insert(button2)

    local buttext2 = display.newText("Voltar", display.contentCenterX, display.contentCenterY*1.7, "Impact", 20)
    buttext2:setFillColor(0, 0, 0 )
    sceneGroup:insert(buttext2)

    button2:addEventListener("tap", mudarCena2)
end
 
 
-- show()
function scene:show( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)

    elseif ( phase == "did" ) then
        -- Code here runs when the scene is entirely on screen
 
    end
end
 
 
-- hide()
function scene:hide( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is on screen (but is about to go off screen)
 
    elseif ( phase == "did" ) then
        -- Code here runs immediately after the scene goes entirely off screen
 
    end
end
 
 
-- destroy()
function scene:destroy( event )
 
    local sceneGroup = self.view
    -- Code here runs prior to the removal of scene's view
 
end
 
 
-- -----------------------------------------------------------------------------------
-- Scene event function listeners
-- -----------------------------------------------------------------------------------
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
-- -----------------------------------------------------------------------------------
 
return scene