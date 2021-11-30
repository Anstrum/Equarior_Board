io.stdout:setvbuf("no")

Screen = {}
	Screen.Color = {0, 0.8, 0, 1}
	Screen.Width = 1200
	Screen.Height = 900
	Screen.Title = "Equarior Board Simulator"




function love.load()
	love.window.setMode(Screen.Width, Screen.Height)
	love.window.setTitle(Screen.Title)
end


function love.update(dt)
end


function love.draw()
end