﻿

MoveMouseToPercentageOfAppSize(xPercent, yPercent) 
{
	CoordMode, Mouse, Window
    WinGetActiveStats, Title, Width, Height, X, Y
    MouseMove, Width * xPercent, Height * yPercent
}

MoveMouseToPercentageOfWindow1(xPercent, yPercent) 
{
	CoordMode, Mouse, Screen
	SysGet, Monitor1, Monitor, 1 
    MonitorWidth := Monitor1Right - Monitor1Left 
    MonitorHeight := Monitor1Bottom - Monitor1Top 
    MouseMove, Monitor1Left + MonitorWidth * xPercent, Monitor1Top + MonitorHeight * yPercent
}

MoveMouseToPercentageOfWindow2(xPercent, yPercent) 
{
	CoordMode, Mouse, Screen
	SysGet, Monitor2, Monitor, 2 
    MonitorWidth := Monitor2Right - Monitor2Left 
    MonitorHeight := Monitor2Bottom - Monitor2Top 
    MouseMove, Monitor2Left + MonitorWidth * xPercent, Monitor2Top + MonitorHeight * yPercent
	
	;SysGet, Monitor, MonitorWorkArea, 2
	;MouseMove, MonitorLeft + (MonitorRight - MonitorLeft) *xPercent, MonitorTop + (MonitorBottom - ;MonitorTop) * yPercent, 0
}


		


center := 0.5
low := 0.15
high := 0.85
full := 0.9996

MouseSlow := 5
MouseNormal := 20
MouseFast := 40

MouseMoveSpeed := MouseNormal

#Numpad1::#1
#Numpad2::#2
#Numpad3::#3
#Numpad4::#4
#Numpad5::#5
#Numpad6::#6
#Numpad7::#7
#Numpad8::#8
#Numpad9::#9
#Numpad0::#0





CapsLock::

Return

vkC0::

Return

#If, GetKeyState("CapsLock", "P")
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
			
			MouseMove, xpos * MouseMoveSpeed, ypos * MouseMoveSpeed, 1, R
			Sleep, 10
		}
	}

	Esc::CapsLock
	
	$vkC0::
	$1::
	$2::
		if(GetKeyState("vkC0", "P"))
			MouseMoveSpeed := MouseSlow
		else if(GetKeyState("1", "P"))
			MouseMoveSpeed := MouseNormal
		else if(GetKeyState("2", "P"))
			MouseMoveSpeed := MouseFast
	return

		
	
	w::Up
	a::Left
	s::Down
	d::Right

	q::Home
	e::End

	Space::LButton

	j::LControl
	k::LShift
	l::LAlt

	Numpad5::Wheelup
	Numpad1::Wheelleft
	Numpad2::Wheeldown
	Numpad3::Wheelright

return

#If, GetKeyState("vkC0", "P") ;
	Esc::vkC0
	+Esc::+vkC0
	
    1::return
    2::return

	MoveMouseUltimate(xPercent, yPercent)
	{
		global MoveMouseUltimateActive := true
		if(GetKeyState("1", "P"))
			MoveMouseToPercentageOfWindow1(xPercent, yPercent)
		else if (GetKeyState("2", "P"))
			MoveMouseToPercentageOfWindow2(xPercent, yPercent)
		else
			MoveMouseToPercentageOfAppSize(xPercent, yPercent)
		MoveMouseUltimateActive := false
	}
	
	Numpad5::MoveMouseUltimate(center, center)
	
	Numpad1::MoveMouseUltimate(low, high)

	Numpad2::MoveMouseUltimate(center, high)


	Numpad3::
	MoveMouseUltimate(high, high)
	Return

	Numpad4::
	MoveMouseUltimate(low, center)
	Return

	Numpad6::
	MoveMouseUltimate(high, center)
	Return

	Numpad8::
	MoveMouseUltimate(center, low)
	Return

	Numpad7::
	MoveMouseUltimate(low, low)
	Return

	Numpad9::
	MoveMouseUltimate(high, low)
	Return

	NumpadDot::
	MoveMouseUltimate(full, full)
	Return

	NumpadAdd::
	MoveMouseUltimate(full, center)
	Return

	Numpad0::
	MoveMouseUltimate(center, full)
	Return
Return