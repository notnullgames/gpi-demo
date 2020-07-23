local game = {}

local lastbutton = "none"

function game:enter()
  music:setVolume(1)
end

function game:draw()
  love.graphics.setNewFont(50)
  love.graphics.print("Hi.", 120, 75)
  love.graphics.setNewFont(10)
  love.graphics.print("you last pressed:"..lastbutton, 120, 125)
end

-- handle input
function game:pressed(button, other1, other2)
  -- for display
  if button then
  	lastbutton = button
  end
  if button == 'start' or button == 'back' then
  	Gamestate.switch(StateMenu)
  end
end


return game