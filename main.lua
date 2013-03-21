gamestate = require "hump.gamestate"
vector = require "hump.vector"
tween = require "tween"
gui = require "Quickie.quickie"

local menu = {}
local game = {}

function menu:init()
	-- body
end

function menu:draw()
    love.graphics.print("Press 'm' to continue", 10, 10)
end

function menu:keypressed(key, unicode)
    if key == "m" then
        gamestate.switch(game)
    end
end

function game:enter()
   --Entities.clear()
   -- setup entities here
	ship = {}
	ship.x = 300
	ship.y = 400
	ship.speed = 100

	planet1 = love.graphics.newImage("textures/planet1.png")
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
	gamestate.registerEvents()
    gamestate.switch(menu)
end
