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

-- handle keyboard for dev
function game:keyreleased(key, code)
  lastbutton = key
  if key == 'escape' then
    Gamestate.switch(StateMenu)
  end
end

-- handle gamepad
function game:gamepadpressed(joystick, button)
  lastbutton = button
  if button == 'start' then
  	Gamestate.switch(StateMenu)
  end
end


return game