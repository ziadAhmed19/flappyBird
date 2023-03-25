
ScoreState = Class{__includes = BaseState}

BRONZE_MEDAL = love.graphics.newImage('Bronze_medal.jpg')
SILVER_MEDAL = love.graphics.newImage('silver_medal.jpg')
GOLDEN_MEDAL = love.graphics.newImage('gold_medal.jpg')

function ScoreState:enter(params)
    self.score = params.score
end

function ScoreState:update(dt)
    -- go back to play if enter is pressed
    if love.keyboard.wasPressed('enter') or love.keyboard.wasPressed('return') then
        gStateMachine:change('countdown')

    end
end
--function 


function ScoreState:render()
    
    love.graphics.setFont(flappyFont)
 if self.score <= 2 then
    love.graphics.draw(BRONZE_MEDAL, VIRTUAL_WIDTH/2 -22 , 80 )
     --love.graphics.printf('Stone medal!', 0, 64, VIRTUAL_WIDTH, 'center')

 elseif self.score <= 3 then
    love.graphics.draw(SILVER_MEDAL, VIRTUAL_WIDTH/2 -22 , 80 )
     --love.graphics.printf('Silver medal', 0, 64, VIRTUAL_WIDTH, 'center')
 else    
    love.graphics.draw(GOLDEN_MEDAL, VIRTUAL_WIDTH/2 - 22 , 80 )
    -- love.graphics.printf('Golden medal!', 0, 64, VIRTUAL_WIDTH, 'center')
    end


    love.graphics.setFont(mediumFont)
    love.graphics.printf('Score: ' .. tostring(self.score), 0, 60, VIRTUAL_WIDTH, 'center')

    love.graphics.printf('Press Enter to Play Again!', 0, 170, VIRTUAL_WIDTH, 'center')
end