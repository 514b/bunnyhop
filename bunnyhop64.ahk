#MaxThreadsPerHotkey 2

Key:= "Space"
Delay:= 1

Hotkey, %Key%, Key_Press, On
Hotkey, %Key% Up, Key_Release, On

Key_Press:
	Send, { F11 }
	SetTimer, BhopEvent, 10
Return

Key_Release:
	Send, { F11 }
	SetTimer, BhopEvent, Off
Return

BhopEvent:
	if GetKeyState(Key, "P")
	{
		Send, {WheelDown}
		Sleep, Delay
	}