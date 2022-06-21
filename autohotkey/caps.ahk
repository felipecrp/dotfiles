; https://www.autohotkey.com/board/topic/104173-capslock-to-control-and-escape/
; $Capslock::Esc

CapsLock::
	IsKey := false
	Input, key, B C L1 T1, {Esc}
	IsKey := true
	if (ErrorLevel = "Max")
		Send, % "^" key
	KeyWait, CapsLock
	return
CapsLock up::
	if !IsKey
		Send, {Esc 2}
	return
 
