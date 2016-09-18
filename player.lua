local AdvTiledLoader = require("AdvTiledLoader.Loader")
require("camera")

function love.load()
	
end

function love.draw()
	camera:set()
	
	love.graphics.setColor( 0, 0, 0 )
	love.graphics.rectangle("fill", player.x - player.w/2, player.y - player.h/2, player.w, player.h)
	
	love.graphics.setColor( 255, 255, 255 )
	map:draw()
	
	camera:unset()
end

function love.update(dt)
end

function love.keyreleased(key)
	if (key == "a") or (key=="d") or (key=="left") or (key=="right") then
		player.x_vel = 0
	end
end