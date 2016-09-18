
function createBox(x, y, l)
	local box = {
		x = x or 0,
		y = y or 0
	}

	function box:load()
		renderer:addRenderer(self, l)
	end

	function box:draw()
		love.graphics.setColor(math.random(0,255), math.random(0,255), math.random(0,255))
		love.graphics.rectangle("fill", self.x, self.y, 64, 64)
	end

	return box
end

function updateTimer()
	local ticker = {}

	function ticker:load()
		gameLoop:addGameLoop(self)

	end

	function ticker:tick( dt )
		print(dt, math.random())
	end

	return ticker

end

function ent:load()
	gameLoop:addLoop(self)
end

function ent:tick(dt)
	print(self.id)
end

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