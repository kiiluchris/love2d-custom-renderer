local Renderer = require("/tools/renderer")

renderer = Renderer:create()

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

function love.load()
	r1 = createBox(64,64)
	r2 = createBox(96,96)
	r1:load()
	r2:load()
end

function love.update(dt)


end

function love.draw()
	renderer:draw()
end