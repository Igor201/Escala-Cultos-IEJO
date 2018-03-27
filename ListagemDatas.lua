local composer = require( "composer" )
local listaDatas = require( "ListaDatas" )
local Culto1 = require("ListaCultos")
local mui = require( "materialui.mui" )
local muiData = require( "materialui.mui-data" )
local service = require("Service")
 
local scene = composer.newScene()

display.setStatusBar( display.HiddenStatusBar )
 
-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------
 
 
-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------
 
local bg
local title
local button


function mudarCena(event)

composer.gotoScene("Menu", {effect = "slideLeft",time = 500})

end

function acaoTabela(event)

        local linhaSelecionada = mui.getWidgetProperty("Datas", "value")
        if tonumber(linhaSelecionada) == 1 then

            composer.gotoScene("ListagemCulto", {effect = "flipFadeOutIn",time = 500})
        end    

        --composer.gotoScene("Menu", {effect = "slideLeft",time = 500})
        print(linhaSelecionada)

end

-- create()
function scene:create( event )
 
    local sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen
 
    bg = display.newRect(display.contentCenterX, display.contentCenterY, display.contentWidth, display.contentHeight)
    bg:setFillColor(1,1,1)
    sceneGroup:insert(bg)

    title = display.newText("Datas de Cultos", display.contentCenterX, display.contentCenterY/13, "Arial Black", 20)
    title:setFillColor(0, 0.5, 1 )
    sceneGroup:insert(title)

    button = display.newRect(0, display.contentCenterY/12, display.contentWidth/5, display.contentHeight/11 )
    button.anchorX = 0
    button:setFillColor(0, 0.5, 1 )
    sceneGroup:insert(button)

    button:addEventListener("tap", mudarCena)

end
 
 
-- show()
function scene:show( event )
 
    local sceneGroup = self.view
    local phase = event.phase

    mui.init()
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)


    elseif ( phase == "did" ) then
        -- Code here runs when the scene is entirely on screen
 	
 	mui.newTableView({
 		parent = sceneGroup,
 		name = "Datas",
 		width = display.contentWidth,
        height = display.contentHeight - 50,
        top = display.contentWidth/6,
        left = 0,
        font = "Arial Black",--native.systemFont,
        fontSize = 15,
        textColor = { 0, 0, 0, 1 },
        lineColor = { 1, 1, 1, 1 },
        lineHeight = 2,
        rowColor = {1, 1, 1, 1},
        rowHeight = 50,
        noLines = false,
        callBackTouch = acaoTabela,
        callBackRender = mui.onRowRenderDemo,
        scrollListener = mui.scrollListener,
        categoryLineColor = {1,1,1,0},
        categoryColor = { default={0.8,0.8,0.8,0.8} },
        list = listaDatas
 		})

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

    sceneGroup:removeSelf()
    sceneGroup = nil
    mui.destroy() 
 
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