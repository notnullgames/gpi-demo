lurker = require "lib.lurker.lurker"
Gamestate = require "lib.hump.gamestate"

config = require "conf"

StateGame = require "states.game"
StateMenu = require "states.menu"
StateOptions = require "states.options"

-- setup globals for states to use
joystick = nil
music = love.audio.newSource("assets/industrial_erotic.mod", "stream")

function love.load()
    love.mouse.setVisible(false)
    local joysticks = love.joystick.getJoysticks()
    joystick = joysticks[1]
    Gamestate.registerEvents()
    Gamestate.switch(StateGame)
    local joysticks = love.joystick.getJoysticks()
    joystick = joysticks[1]
    music:setVolume(1)
    music:play()
    music:setLooping(true)
end

-- this simplifies input into a single callback for keys & gamepad
function love.gamepadpressed(joystick, button)
  local gs = Gamestate.current()
  if gs.pressed then
    if button == 'dpup' then
      gs:pressed('up')
    end
    if button == 'dpdown' then
      gs:pressed('down')
    end
    if button == 'dpleft' then
      gs:pressed('left')
    end
    if button == 'dpright' then
      gs:pressed('right')
    end
    if button == 'a' then
      gs:pressed('a')
    end
    if button == 'b' then
      gs:pressed('b')
    end
    if button == 'x' then
      gs:pressed('x')
    end
    if button == 'y' then
      gs:pressed('y')
    end
    if button == 'start' then
      gs:pressed('start')
    end
    if button == 'back' then
      gs:pressed('back')
    end
    if button == 'leftshoulder' then
      gs:pressed('l')
    end
    if button == 'rightshoulder' then
      gs:pressed('r')
    end
  end
end

function love.keypressed(key, code)
  local gs = Gamestate.current()
  if gs.pressed then
    if key == 'up' then
      gs:pressed('up')
    end
    if key == 'down' then
      gs:pressed('down')
    end
    if key == 'left' then
      gs:pressed('left')
    end
    if key == 'right' then
      gs:pressed('right')
    end
    if key == 'z' then
      gs:pressed('a')
    end
    if key == 'x' then
      gs:pressed('b')
    end
    if key == 'a' then
      gs:pressed('x')
    end
    if key == 's' then
      gs:pressed('y')
    end
    if key == 'return' then
      gs:pressed('start')
    end
    if key == 'escape' then
      gs:pressed('back')
    end
    if key == 'pageup' then
      gs:pressed('l')
    end
    if key == 'pagedown' then
      gs:pressed('r')
    end
  end
end

function love.gamepadreleased(joystick, button)
  local gs = Gamestate.current()
  if gs.released then
    if button == 'dpup' then
      gs:released('up')
    end
    if button == 'dpdown' then
      gs:released('down')
    end
    if button == 'dpleft' then
      gs:released('left')
    end
    if button == 'dpright' then
      gs:released('right')
    end
    if button == 'a' then
      gs:released('a')
    end
    if button == 'b' then
      gs:released('b')
    end
    if button == 'x' then
      gs:released('x')
    end
    if button == 'y' then
      gs:released('y')
    end
    if button == 'start' then
      gs:released('start')
    end
    if button == 'back' then
      gs:released('back')
    end
    if button == 'leftshoulder' then
      gs:released('l')
    end
    if button == 'rightshoulder' then
      gs:released('r')
    end
  end
end

function love.keyreleased(key, code)
  local gs = Gamestate.current()
  if gs.released then
    if key == 'up' then
      gs:released('up')
    end
    if key == 'down' then
      gs:released('down')
    end
    if key == 'left' then
      gs:released('left')
    end
    if key == 'right' then
      gs:released('right')
    end
    if key == 'z' then
      gs:released('a')
    end
    if key == 'x' then
      gs:released('b')
    end
    if key == 'a' then
      gs:released('x')
    end
    if key == 's' then
      gs:released('y')
    end
    if key == 'return' then
      gs:released('start')
    end
    if key == 'escape' then
      gs:released('back')
    end
    if key == 'pageup' then
      gs:released('l')
    end
    if key == 'pagedown' then
      gs:released('r')
    end
  end
end


function love.update(dt)
  -- global full-exit on retropie is start+select
  if joystick and joystick:isGamepadDown('start') and joystick:isGamepadDown('back') then
    love.event.quit()
  end
  
  -- hot-reloading
  if config.hot_reload then
    lurker.update()
  end
end