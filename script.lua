local function move(x, y)
    local dir = 0
    repeat 
        dir = math.random(-1,1)
    until (dir ~= 0)

    repeat
        local xInt = dir*math.random(1,25)
        local yInt = dir*math.random(1,25)
        local sleepInt = math.random(0,4)
        MoveMouseRelative(xInt,yInt)
        x = x - math.abs(xInt)
        y = y - math.abs(yInt)
        Sleep(sleepInt)
    until (x <= 0 and y <= 0)
end

function OnEvent(event, arg)
    if event == "MOUSE_BUTTON_PRESSED" and arg == 7 then
        local i = 0
        repeat
            PressAndReleaseKey("spacebar")
            PressAndReleaseKey("lctrl")
            move(math.random(0,700), math.random(0,700))
		   PressAndReleaseMouseButton(3)
            Sleep(math.random(10,100))
            
		   move(math.random(0,700), math.random(0,700))
		   PressAndReleaseMouseButton(1)
            Sleep(math.random(10,100))
            
		   move(math.random(0,700), math.random(0,700))
		   PressAndReleaseMouseButton(3)
		   Sleep(math.random(10,100))
            
            move(math.random(0,700), math.random(0,700))
		   PressAndReleaseMouseButton(1)
		   Sleep(math.random(10,100))

            i = i + 1;
        until (i == 50)
    end
end
