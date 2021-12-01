local Board = {}
	Board.ProjectScale = 1
	Board.Lines = {}
		Board.LRack = {}
		Board.RRack = {}



function Board.Init(ProjectScale)
	Board.ProjectScale = ProjectScale
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
	love.graphics.rectangle("line", 98 * Board.ProjectScale, 98 * Board.ProjectScale, 204 * Board.ProjectScale, 1604 * Board.ProjectScale)
	for i = 1, 8 do
		local MyCase = Board.LRack[i]
		love.graphics.setColor(MyCase.Color)
		love.graphics.rectangle("fill", 100 * Board.ProjectScale, 100 * Board.ProjectScale + (i-1) * 200 * Board.ProjectScale, 200 * Board.ProjectScale, 200 * Board.ProjectScale)
	end


	--Right Rack--
	love.graphics.setColor(1, 1, 1, 1)
	love.graphics.rectangle("line", 2098 * Board.ProjectScale, 98 * Board.ProjectScale, 204 * Board.ProjectScale, 1604 * Board.ProjectScale)
		for i = 1, 8 do
		local MyCase = Board.RRack[i]
		love.graphics.setColor(MyCase.Color)
		love.graphics.rectangle("fill", 2100 * Board.ProjectScale, 100 * Board.ProjectScale + (i-1) * 200 * Board.ProjectScale, 200 * Board.ProjectScale, 200 * Board.ProjectScale)
	end

	--Main Board Drawing--
	love.graphics.setColor(1, 1, 1, 1)
	love.graphics.rectangle("line", 398 * Board.ProjectScale, 98 * Board.ProjectScale, 1604 * Board.ProjectScale, 1604 * Board.ProjectScale)
	for i = 1, 8 do
		for j = 1, 8 do
			local MyCase = Board.Lines[i][j]
			love.graphics.setColor(MyCase.Color)
			love.graphics.rectangle("fill", 400 * Board.ProjectScale + (i-1) * 200 * Board.ProjectScale, 100 * Board.ProjectScale + (j-1) * 200 * Board.ProjectScale, 200 * Board.ProjectScale, 200 * Board.ProjectScale)
		end
	end
end


return Board