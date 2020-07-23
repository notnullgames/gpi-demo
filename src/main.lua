lurker = require "lib.lurker.lurker"
Gamestate = require "lib.hump.gamestate"

config = require "conf"

StateGame = require "states.game"
StateMenu = require "states.menu"
StateOptions = require "states.options"

music = love.audio.newSource("assets/industrial_erotic.mod", "stream")

function love.load()
    love.mouse.setVisible(false)
    local joysticks = love.joystick.getJoysticks()
    joystick = joysticks[1]
    music:setVolume(1)
    music:setLooping(true)
    music:play()

    Gamestate.registerEvents()
    Gamestate.switch(StateGame)
end

function love.update()
  if config.hot_reload then
    lurker.update()
  end
end