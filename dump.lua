
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