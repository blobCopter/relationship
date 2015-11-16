--
--
-- TEST LOVE APP
--
--
--

require('SceneObject')

local anim = nil

function love.load(arg)
	love.graphics.setBackgroundColor({0, 0, 0})
	anim = SceneObject.new('sprites/animation1.lua');
	anim:setSpeedMultiplier(1);
end

function love.keypressed(key)
	if key == 'escape' then
		love.event.push('quit')
	elseif key == "up" then
		anim:setState("jumpStart")
	end
end

function love.draw()

	anim:draw()
	love.graphics.print(anim:getCurrentState(), 300, 300)

end

function love.update(dt)

	anim:update(dt)

end
