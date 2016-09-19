local tlm = require("/tools/tile_manager")
local camera = require("/tools/camera")
local player = require("/objects/player")

gameLoop = require("/tools/gameLoop")
renderer = require("/tools/renderer")
obm = require("/tools/object_manager")
asm = require("/tools/asset_manager")

gameTime = 0

function love.load()
	asm:load()
	asm:add(love.graphics.newImage("/assets/maps/level1.png"), "background")
	gameLoop:load()
	renderer:load()
	tlm:load()
	obm:load()

	tlm:loadmap("level1")

	-- obm.add(player:new(128, 64))
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