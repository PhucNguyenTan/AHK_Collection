;#IfWinActive KOFXV



/* The "default" SOCD cleaner
   Left + Right = Neutral
    Up  + Down  = Up
*/

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, force
#MaxHotkeysPerInterval 200 ; allow up to 200 hotkeys per interval (from the default 70)

critical on

GroupAdd, FGC, ahk_exe GuiltyGearXrd.exe
GroupAdd, FGC, ahk_exe GGST-Win64-Shipping.exe
GroupAdd, FGC, ahk_exe MBAA.exe
GroupAdd, FGC, ahk_exe umvc3.exe
GroupAdd, FGC, ahk_exe NohBoard.exe ; for testing, keep this commented otherwise

;Thread, Interrupt, .00005, 2
;#IfWinActive, ahk_group FGC

$1:: ;left down
  critical
  If GetKeyState("w", "P") {
    SendInput {w up}
  }
  else {
    SendInput {1 down}
  }
return


$w:: ;right down
  critical
  If GetKeyState("1", "P")  {
    SendInput {1 up}
  }
  else {
    SendInput {w down}
  }
return


$space:: ;up down
  critical
  SendInput {2 up}{space down}
return


$2:: ;down down
  critical
  If GetKeyState("space", "P")
  {
      SendInput {2 up}{space down}
  }
  else {
    SendInput {2 down}
  }
 return


$1 up:: ;left up
  critical
  If GetKeyState("w", "P") {
    SendInput {w down}
  }
  SendInput {1 up}
return


$w up:: ;right up
  critical
  If GetKeyState("1", "P") {
    SendInput {1 down}
  }
  SendInput {w up}
return


$space up:: ;;up up
  critical
  if GetKeyState("2", "P") {
    SendInput {2 down}
  }
  SendInput {space up}
 return


$2 up:: ;down up
  critical
  SendInput {2 up}
return