local tlm = require("/tools/tile_manager")
local camera = require("/tools/camera")

gameLoop = require("/tools/gameLoop")
renderer = require("/tools/renderer")
obm = require("/tools/object_manager")
asm = require("/tools/asset_manager")

gameTime = 0

function love.load()
	asm:load()
	asm:add(love.graphics.newImage("/assets/images/bg6.png"), "background")
	gameLoop:load()
	renderer:load()
	tlm:load()
	obm:load()

	tlm:loadmap("level1")
	-- camera.scale.x = .5
	-- camera.scale.y = .5
	-- camera.pos.y = 256
end

function love.update(dt)
	gameTime = gameTime + dt
	gameLoop:update(dt)

	-- camera.pos.x = camera.pos.x + math.cos(gameTime / 5) 
end

function love.draw()
	camera:set()
	renderer:draw()
	camera:unset()
end