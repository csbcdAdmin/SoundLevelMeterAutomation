#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.12.0
 Author:         Reed Shinsato

 Script Function:
	Simple script to automate "Sound Level Meter" storage.

#ce ----------------------------------------------------------------------------
#include <GUIConstantsEx.au3>
Global $hGUI = GUICreate("SLM Automation", 500, 100)
Global $Button1 = GUICtrlCreateButton("Stop", 220, 50, 100)
GUISetState()
Do
   Local $i = ControlGetText("Sound Level Meter", "", "Edit7")
   $msg = GUIGetMsg()
   If $msg = $Button1 Then
	  GUIDelete($hGUI)
   EndIf
   If $i >= 2000 Then
	  WinActivate("Sound Level Meter")
	  WinWaitActive("Sound Level Meter")
	  WinActive("Sound Level Meter")
	  If WinActive("Sound Level Meter") Then
		Save()
	  EndIf
   EndIf
until $msg = $GUI_EVENT_CLOSE
GUIDelete($hGUI)
Func Save()
   Send("{ALTDOWN}+r")
   Sleep(500)
   Send("{ALTUP}")
   Sleep(500)
   Send("s")
   Sleep(500)
   Send("{ALTDOWN}+r")
   Sleep(500)
   Send("{ALTUP}")
   Sleep(1000)
   Send("r")
   Sleep(500)
   WinActivate("Tip")
   WinWaitActive("Tip")
   WinActive("Tip")
   WinActivate("Tip")
   WinWaitActive("Tip")
   WinActive("Tip")
   Sleep(500)
   ControlClick("Tip", "", "Button1")
   Sleep(500)
   WinActivate("Save As")
   WinWaitActive("Save As")
   WinActive("Save As")
   Send("{ALTDOWN}+s")
   Sleep(500)
   Send("{ALTUP}")
   Sleep(500)
   Send("{ALTDOWN}+y")
   Sleep(500)
   Send("{ALTUP}")
   Sleep(500)
EndFunc
