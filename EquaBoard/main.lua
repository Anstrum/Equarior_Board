io.stdout:setvbuf("no")

Board = require("Board")
Pieces = require("Pieces")


Screen = {}
	Screen.Color = {0, 0.8, 0, 1}
	Screen.Width = 1200
	Screen.Height = 900
	Screen.Title = "Equarior Board Simulator"




function love.load()
	love.window.setMode(Screen.Width, Screen.Height)
	love.window.setTitle(Screen.Title)
	Board.Init()
	Pieces.Init()
end


function love.update(dt)
end


function love.draw()
	Board.Draw()
end



