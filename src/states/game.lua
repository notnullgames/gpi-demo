local game = {}

function game:enter()
  music:setVolume(1)
end

function game:draw()
  love.graphics.setNewFont(50)
  love.graphics.print("Hi.", 120, 75)
end

function game:keyreleased(key, code)
  if key == 'escape' then
    Gamestate.switch(StateMenu)
  end
end

return game