; Arrow keys to move mouse cursor
#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
CoordMode, Mouse, Screen

; Set mouse speed
MouseMoveSpeed := 15

$Up::
$Down::
$Left::
$Right::
Loop{
	xpos := 0
	ypos := 0
	if GetKeyState("Up", "P")
		ypos := ypos - 1
	if GetKeyState("Down", "P")
		ypos := ypos + 1
	if GetKeyState("Left", "P")
		xpos := xpos - 1
	if GetKeyState("Right", "P")
		xpos := xpos + 1
		
	MouseMove, xpos * MouseMoveSpeed, ypos * MouseMoveSpeed, 0, R
	Sleep, 10
}
return