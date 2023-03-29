; Set mouse speed
MouseMoveSpeed := 30

CapsLock::

Return

vkC0::

Return

#If, GetKeyState("CapsLock", "P") ;Your CapsLock hotkeys go below
$Up::
$Down::
$Left::  
$Right::
Loop{
	if GetKeyState("CapsLock", "P")
	{
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
		Sleep, 1
	}
}

w::Up
a::Left
s::Down
d::Right

q::Home
e::End

1::BS
2::Enter

F1::p

RControl::LButton
RShift::RButton


return 
#If, GetKeyState("vkC0", "P")

m::1 
$vkBC::2
$vkBE::3
j::4
k::5
l::6
u::7
i::8
o::9
space::0

#l::#6

LWin::
return

return





