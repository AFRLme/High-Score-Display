== Main Script ==

```
--[[
High Score (updated via function) [v2.1] (29/03/2014)
Written by AFRLme [Lee Clarke]
-- + --
alternatingfrequencies@hotmail.com | skype @ AFRLme
-- + --
This script is donation optional. In game credit is non-negotiable.
You are free to: ¹ use it in your game(s). ² modify the script.
Do not remove - or edit - this comment block.
--]]

-- * local variables * --
local score = getObject("Values[v_score]") -- store score value

-- * function used to set score value & determine which animations/frames should be displayed * --
function setScore(val, inc)
if inc then score:setValue(VValueInt, (score:getInt(VValueInt) + val)) else score:setValue(VValueInt, (score:getInt(VValueInt) - val)) end -- if true add val to current score else remove val from current score
if string.len( math.abs( score:getInt(VValueInt ) ) ) < 7  then -- check digit value less than 7 & if so, hide the invalid digits
 for i = (string.len(val) + 1), 7 do  -- actual digit value (+1) to max digit value
  getObject("ActiveAnimations[ani_d" .. i .. "]"):setValue(VAnimationFirstFrame, 11); getObject("ActiveAnimations[ani_d" .. i .. "]"):setValue(VAnimationLastFrame, 11) -- blank animation frame
  end
 end
 if score:getInt(VValueInt) >= 0 then -- if value is positive do positive block else do negative block
  for i = 1, string.len( score:getInt(VValueInt) ) do -- set the frame value to match the digit number
   getObject("ActiveAnimations[ani_inc]"):setValue(VAnimationFirstFrame, 1); getObject("ActiveAnimations[ani_inc]"):setValue(VAnimationLastFrame, 1) -- positive value; set blank frame
   getObject("ActiveAnimations[ani_d" .. i .. "]"):setValue(VAnimationFirstFrame, string.sub( score:getInt(VValueInt), i, i ) + 1) -- set linked animation first frame to digit value (+1)
   getObject("ActiveAnimations[ani_d" ..  i .. "]"):setValue(VAnimationLastFrame, string.sub( score:getInt(VValueInt), i, i ) + 1) -- set linked animation last frame to digit value (+1)
  end
 else for i = 1, string.len( - score:getInt(VValueInt) ) do -- set the frame value to match the digit number
  getObject("ActiveAnimations[ani_inc]"):setValue(VAnimationFirstFrame, 2); getObject("ActiveAnimations[ani_inc]"):setValue(VAnimationLastFrame, 2)  -- negative value; set negative frame
  getObject("ActiveAnimations[ani_d" .. i .. "]"):setValue(VAnimationFirstFrame, string.sub( - score:getInt(VValueInt), i, i ) + 1) -- set linked animation first frame to digit value (+1)
  getObject("ActiveAnimations[ani_d" ..  i .. "]"):setValue(VAnimationLastFrame, string.sub( - score:getInt(VValueInt), i, i ) + 1) -- set linked animation last frame to digit value (+1)
  end
 end
end
```
