local tlm = {}

local width = 128
local height = 128

local size = 16

function tlm:load()
	gameLoop:addLoop(self)
	renderer:addRenderer(self)

	self.tiles = {}
	for i = 1, height do
		self.tiles[i] = {}
	end
end

function tlm:tick(dt)
end

function tlm:draw()
	for i = 1, #self.tiles do
		for j = 1, #self.tiles[i] do
			local tile = self.tiles[i][j]
			love.graphics.rectangle("fill", size*tile.x-size, size*tile.y-size, tile.w, tile.h)
		end
	end
end

function tlm:add(t)
	self.tiles[t.y][t.x] = t
end

return tlm