; Arrow keys to move mouse cursor
#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
CoordMode, Mouse, Screen

; Set mouse speed
MouseMoveSpeed := 10

; Arrow keys to move mouse cursor
Up::
Loop
{
    MouseMove, 0, -MouseMoveSpeed, 0, R
    Sleep, 10
    if not GetKeyState("Up", "P")
        break
}

Down::
Loop
{
    MouseMove, 0, MoveMouseSpeed, 0, R
    Sleep, 10
    if not GetKeyState("Down", "P")
        break
}

Right::
Loop
{
    MouseMove, MoveMouseSpeed, 0, 0, R
    Sleep, 10
    if not GetKeyState("Right", "P")
        break
}

Left::
Loop
{
    MouseMove, -MoveMouseSpeed, 0, 0, R
    Sleep, 10
    if not GetKeyState("Left", "P")
        break
}
return