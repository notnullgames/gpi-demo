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