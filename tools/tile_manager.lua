local vec2 = require("tools/vector2")

local Tlm = {}

local quad = love.graphics.newQuad
local quads = {
	quad(0,50,16,16,1280,720),
	quad(200,100,16,16,1280,720),
	quad(400,150,16,16,1280,720),
	quad(600,200,16,16,1280,720),
	quad(800,250,16,16,1280,720),
	quad(1000,300,16,16,1280,720),
	quad(120,400,16,16,1280,720),
	quad(140,500,16,16,1280,720),
	quad(160,600,16,16,1280,720),
}
function tile(x,y,w,h,quad)
	local tile = {}

	tile.pos = vec2:new(x,y)
	tile.size = vec2:new(w,h)
	tile.quad = quad

	return tile
end

function Tlm:load()
	self.tiles = {}
	self.img = asm:get("background")
	self.img:setFilter("nearest","nearest")

	renderer:addRenderer(self)
end

function Tlm:draw()

	for layer = 1,#self.tiles do
		for i = 1,64 do
			for j = 1,64 do 

				if self.tiles[layer][i][j] ~= nil then
					local tile = self.tiles[layer][i][j]
					love.graphics.draw(self.img,tile.quad,tile.pos.x,tile.pos.y)
				end

			end
		end
	end
end

function Tlm:loadmap(mapname)
	local map = require ("assets/maps/"..mapname)

	for layer = 1,#map.layers do
		self.tiles[layer] = {}
		for i = 1,map.height do
			self.tiles[layer][i] = {}
		end
	end

	for layer = 1,#map.layers do
		local data = map.layers[layer].data
		local prop = map.layers[layer].prop

		for y = 1,map.height do
			for x = 1,map.width do

				local index = (y*map.height +(x-1)-map.width)+1

				if data[index] ~= 0 then

					local q = quads[math.random(8)]
					print(data[index])
					self.tiles[layer][y][x] = tile(16*x-16,16*y-16,16,16,q)

				end

			end
		end
	end

end

function Tlm:destroy()

end

return Tlm