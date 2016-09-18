local ASM = {}

function ASM:load()
	self.assets = {}
end

function ASM:add(asset, id)
	local a = {asset = asset, id = id}
	table.insert( self.assets, a)
end

function ASM:get(id)
	for i = 1, #self.assets do
		local asset = self.assets[i]
		if asset.id == id then
			return asset.asset
		end
	end
end

return ASM