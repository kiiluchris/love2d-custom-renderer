local GameLoop = require("/tools/gameLoop")
local Renderer = require("/tools/renderer")

gameLoop = GameLoop:create()
renderer = Renderer:create()

g_WindowWidth   = love.graphics.getWidth()
g_WindowHeight  = love.graphics.getHeight()

g_GameTime = 0



function love.load()

	
end

function love.update(dt)
	g_GameTime = g_GameTime + dt
	gameLoop:update(dt)
end

function love.draw()
	renderer:draw()
end