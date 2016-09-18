local Renderer = {
	drawers = {}
}

local num_of_layers = 5
local insert = table.insert
local remove = table.remove

function Renderer:load()
	for i=0, num_of_layers do 
		self.drawers[i] = {}
	end
end

function Renderer:addRenderer(obj, layer)
	local l = layer or 0
	insert(self.drawers[l], obj)
end

function Renderer:draw()
	for layer = 0, #self.drawers do
		for draw = 0, #self.drawers[layer] do
			local obj = self.drawers[layer][draw]
			if obj ~= nil then
				obj:draw()
			end
		end
	end
end


return Renderer