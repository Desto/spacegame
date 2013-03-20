function love.load()
	love.graphics.setBackgroundColor( 0, 0, 0 )
	planet1 = love.graphics.newImage("textures/planet1.png")
end

function love.draw()
	local x = love.mouse.getX()
	local y = love.mouse.getY()

	love.graphics.setColor( 255, 255, 255 )
	love.graphics.rectangle( "fill", x-16, y-16, 32, 32 )

	love.graphics.setColor( 255, 255, 255, 255 )
	love.graphics.draw(planet1, 300, 300, 0, 1, 1, 0, 0)
end

function love.update(dt)
end

function love.focus(bool)
end

function love.keypressed( key, unicode )
end

function love.keyreleased( key, unicode )
end

function love.mousepressed( x, y, button )
end

function love.mousereleased( x, y, button )
end

function love.quit()
end