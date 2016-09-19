local Player = {}

function Player:new(x, y)
	local player = require("/objects/entity"):new(x,y,32,32,nil,nil,"player")

	function player:load()
		gameLoop:addLoop(self)
		renderer:addRenderer(self)
	end

	function player:tick(dt)
		
	end

	function player.draw()
		love.graphics.rectangle("fill", self.pos.x, self.pos.y, self.size.z, self.size.y)
	end

	return player
end

return Player