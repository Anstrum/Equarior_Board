local Board = {}
	Board.Lines = {}
		Board.LRack = {}
		Board.RRack = {}



function Board.Init()
	for i = 1, 8 do
		table.insert(Board.Lines, {})
		for j = 1, 8 do
			local NewCase = {}
			NewCase.X = i
			NewCase.Y = j
			if (i+j)%2 == 0 then
				NewCase.Color = {0.4, 0.2, 0, 1}
			else
				NewCase.Color = {0.3, 0.3, 0.3, 1}
			end
			table.insert(Board.Lines[i], NewCase)
		end
	end

	for i = 1, 8 do
		local NewCase = {}
		NewCase.Y = i
		if i % 2 == 0 then
			NewCase.Color = {0.4, 0.2, 0, 1}
		else
			NewCase.Color = {0.3, 0.3, 0.3, 1}
		end
		table.insert(Board.LRack, NewCase)
		NewCase = {}
		NewCase.Y = i
		if i % 2 == 0 then
			NewCase.Color = {0.3, 0.3, 0.3, 1}
		else
			NewCase.Color = {0.4, 0.2, 0, 1}
		end
		table.insert(Board.RRack, NewCase)
	end
end


function Board.Draw()
	--Left Rack--
	love.graphics.setColor(1, 1, 1, 1)
	love.graphics.rectangle("line", 49, 49, 102, 802)
	for i = 1, 8 do
		local MyCase = Board.LRack[i]
		love.graphics.setColor(MyCase.Color)
		love.graphics.rectangle("fill", 50, 50 + (i-1) * 100, 100, 100)
	end


	--Right Rack--
	love.graphics.setColor(1, 1, 1, 1)
	love.graphics.rectangle("line", 1049, 49, 102, 802)
		for i = 1, 8 do
		local MyCase = Board.RRack[i]
		love.graphics.setColor(MyCase.Color)
		love.graphics.rectangle("fill", 1050, 50 + (i-1) * 100, 100, 100)
	end

	--Main Board Drawing--
	love.graphics.setColor(1, 1, 1, 1)
	love.graphics.rectangle("line", 199, 49, 802, 802)
	for i = 1, 8 do
		for j = 1, 8 do
			local MyCase = Board.Lines[i][j]
			love.graphics.setColor(MyCase.Color)
			love.graphics.rectangle("fill", 200 + (i-1) * 100, 50 + (j-1) * 100, 100, 100)
		end
	end
end


return Board