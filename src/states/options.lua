local options = {}

function options:draw()
  love.graphics.setNewFont(50)
  love.graphics.print("OPTIONS", 10, 10)
end

-- handle input
function options:pressed(button)
  if button == 'b' or button == 'back' then
    Gamestate.switch(StateMenu)
  end
end

return options