; Set initial speed to 10
speed := 10000

; Set initial delay to 10ms
delay := 10

; Move mouse cursor smoothly when pressing the arrow keys
$Up::
$Down::
$Left::
$Right::
    MouseGetPos, xpos, ypos
    ; Calculate the distance to move the mouse
    dist := Round(speed * delay / 1000, 0.1)
    ; Calculate the new mouse position based on the pressed arrow key
    if (A_ThisHotkey = "$Up") {
        ypos -= dist
    } else if (A_ThisHotkey = "$Down") {
        ypos += dist
    } else if (A_ThisHotkey = "$Left") {
        xpos -= dist
    } else if (A_ThisHotkey = "$Right") {
        xpos += dist
    }
    ; Move the mouse
    MouseMove, xpos, ypos, 100
return

; Increase speed when pressing the + key
+::
    speed += 5
return

; Decrease speed when pressing the - key
-::
    speed -= 5
return