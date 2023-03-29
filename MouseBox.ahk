MoveMouseToPercentageOfAppSize(xPercent, yPercent) {
    WinGetActiveStats, Title, Width, Height, X, Y
    MouseMove, Width * xPercent, Height * yPercent, 0
}

center := 0.5
low := 0.15
high := 0.85
full := 0.999

Numpad5::
MoveMouseToPercentageOfAppSize(center, center)
Return

Numpad1::
MoveMouseToPercentageOfAppSize(low, high)
Return

Numpad2::
MoveMouseToPercentageOfAppSize(center, high)
Return

Numpad3::
MoveMouseToPercentageOfAppSize(high, high)
Return

Numpad4::
MoveMouseToPercentageOfAppSize(low, center)
Return

Numpad6::
MoveMouseToPercentageOfAppSize(high, center)
Return

Numpad8::
MoveMouseToPercentageOfAppSize(center, low)
Return

Numpad7::
MoveMouseToPercentageOfAppSize(low, low)
Return

Numpad9::
MoveMouseToPercentageOfAppSize(high, low)
Return

NumpadDot::
MoveMouseToPercentageOfAppSize(full, full)
Return

NumpadAdd::
MoveMouseToPercentageOfAppSize(full, center)
Return

Numpad0::
MoveMouseToPercentageOfAppSize(center, full)
Return