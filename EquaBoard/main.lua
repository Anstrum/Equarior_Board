io.stdout:setvbuf("no")

ScreenScale = 0.4

Board = require("Board")
Pieces = require("Pieces")


Screen = {}
	Screen.Color = {0, 0.8, 0, 1}
	Screen.Width = 2400
	Screen.Height = 1800
	Screen.Title = "Equarior Board Simulator"




function love.load()
	love.window.setMode(Screen.Width * ScreenScale, Screen.Height * ScreenScale)
	love.window.setTitle(Screen.Title)
	Board.Init(ScreenScale)
	Pieces.Init()
end


function love.update(dt)
end


function love.draw()
	Board.Draw()
end



