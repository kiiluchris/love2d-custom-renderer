local GameLoop = require("/tools/gameLoop")
local Renderer = require("/tools/renderer")

gameLoop = GameLoop:create()
renderer = Renderer:create()

g_WindowWidth   = love.graphics.getWidth()
g_WindowHeight  = love.graphics.getHeight()

g_GameTime = 0



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
function love.load()
	obj = updateTimer()
	obj:load()
end

function love.update(dt)
	g_GameTime = g_GameTime + dt
	gameLoop:update(dt)
end

function love.draw()
	renderer:draw()
end