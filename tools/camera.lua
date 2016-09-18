local Camera = {
	pos = require("./tools/vector2"):new(0,0),
	size = require("./tools/vector2"):new(0,0),
	scale = require("./tools/vector2"):new(1,1),
	rot = 0
}
local lg = love.graphics
local pop = lg.pop
local trans = lg.translate
local rotate = lg.rotate
local scale = lg.scale
local push = lg.push

function Camera:set()
	push()
	trans(-self.pos.x, -self.pos.y)
	rotate(-self.rot)
	scale(1 / self.scale.x, 1 / self.scale.y)
end

function Camera:unset()
	pop()
end

return Camera