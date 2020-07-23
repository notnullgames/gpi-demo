local menu = {}

local menuItem = 0

function menu:load()
  menuItem = 0
end

function menu:enter()
  music:setVolume(0.2)
end

function menu:draw()
  love.graphics.setNewFont(20)
  love.graphics.print("Return to Game", 40, 20)
  love.graphics.print("Options", 40, 45)
  love.graphics.print("Exit this demo", 40, 70)
  love.graphics.setNewFont(40)
  love.graphics.print("•", 15, 10 + (25 * menuItem))
end

-- handle input
function menu:pressed(button)
  if button == 'b' or button == 'back' then
    Gamestate.switch(StateGame)
  end
  if button == 'down' then
    menuItem = (menuItem + 1) % 3
  end
  if button == 'up' then
    menuItem = (menuItem - 1) % 3
  end
  if button == 'a' or button == 'start' then
    if menuItem == 0 then
      Gamestate.switch(StateGame)
    end
    if menuItem == 1 then
      Gamestate.switch(StateOptions)
    end
    if menuItem == 2 then
      love.event.quit()
    end
  end
end

return menu