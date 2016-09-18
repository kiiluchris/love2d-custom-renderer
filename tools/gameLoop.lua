local GameLoop = {}

local insert = table.insert
local remove = table.remove

function GameLoop:load()
	self.tickers = {}
end


function GameLoop:addLoop(obj)
	insert(self.tickers, obj)
end

function GameLoop:update(dt)
	for ticker = 0, #self.tickers do
		local obj = self.tickers[ticker]
		if obj ~= nil then
			obj:tick(dt)
		end
	end
end


return GameLoop