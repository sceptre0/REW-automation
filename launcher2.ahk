#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Gui, font, s22
Gui, Show, x0 y0 w400 h340, Launcher
Gui, Add, Button, Default gLaunch, Launch REW
;Gui, Add, Button, Default gREW, Launch REQ Modules
Gui, Add, Button, Default grecord, Start Recording
return

Launch:
{
	SetTitleMatchMode, 2
	Run, "C:\Program Files\REW\roomeqwizard.exe"
	isroomeqrunning := false
	while(isroomeqrunning = false)
	{
		IfWinActive, REW
		{
			isroomeqrunning :=true
			
			WinActivate, REW
			Send ^+T
			Send ^+M
			Send ^+O
		}
		WinWait, REW, , 20
	}	

	
}
return

;REW:
;{	
;	SetTitleMatchMode, 2
;	WinActivate, REW
;	Send ^+T
;	Send ^+M
;	Send ^+O
;}
;return

record:
{
	; WinActivate ahk_exe i)\\notepad\.exe$  ; Match the name part of the full path.	
	CoordMode, Mouse, Screen
	click, 1865, 111 
	click, 1870, 571
}
return

