local rect = require("/objects/rect")
local vec2 = require("/tools/vector2")

local Entity = {}

function Entity:new(x, y, w, h, img, quad, id)
	local entity = rect:new(x, y, w, h)

	entity.velocity = vec2:new(0, 0)
	entity.direction = vec2:new(0, 0)
	entity.speed = vec2:new(0, 0)
	entity.id = id

	entity.remove = false

	function entity:load( )
	end

	function entity:tick(dt)
	end

	function entity:draw()
	end

	return entity
end

return Entity