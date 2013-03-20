Gamestate = require "hump.gamestate"
vector = require "hump.vector"

local menu = {}
local game = {}

function menu:draw()
    love.graphics.print("Press Enter to continue", 10, 10)
end

function menu:keyreleased(key)
    if key == 'enter' then
        --Gamestate.switch(game)
        Gamestate.quit()
    end
end

function game:enter()
	ship = {}
	ship.x = 300
	ship.y = 400
	ship.speed = 100

    --love.graphics.setBackgroundColor( 0, 0, 0 )
	planet1 = love.graphics.newImage("textures/planet1.png")

    --Entities.clear()
    -- setup entities here
end

function game:update(dt)
    --Entities.update(dt)
	if love.keyboard.isDown("left") then
		ship.x = ship.x - ship.speed*dt
	elseif love.keyboard.isDown("right") then
		ship.x = ship.x + ship.speed*dt
	elseif love.keyboard.isDown("down") then
		ship.y = ship.y + ship.speed*dt
	elseif love.keyboard.isDown("up") then
		ship.y = ship.y - ship.speed*dt
	end
end

function game:draw()
    --Entities.draw()
    love.graphics.setColor( 255, 255, 255, 255 )
	love.graphics.draw( planet1, 300, 300, 0, 1, 1, 0, 0 )

    love.graphics.setColor(255,255,0,255)
    love.graphics.rectangle("fill",ship.x,ship.y,30,15)
end

function love.load()
	Gamestate.registerEvents()
    Gamestate.switch(game)
end
