#NoEnv
#SingleInstance Force
Gui, Color , 585c56, 999999
Gui, Font, s10 cwhite bold, Verdana 
Gui, +Resize -MinimizeBox
Gui, Add, Text,vEdit1,  xxxxxxxxxxxxxxxxxxxxxxxxxxxxx 
Gui, Add, Text,vEdit2,  xxxxxxxxxxxxxxxxxxxxxxxxxxxxx
Gui, Add, Text,vEdit3,  xxxxxxxxxxxxxxxxxxxxxxxxxxxxx
Gui, Show, w455 h165, Test window sizes
WinGetPos, X, Y, Width, Height, A
GuiControl, Text, Edit1, X: %X% Y: %Y% 
GuiControl, Text, Edit2, Width: %Width%
GuiControl, Text, Edit3, Height: %Height%                                      .
return


; Hotkey for left mouse button release
~LButton Up::
if WinActive("Test window sizes") {
    WinGetPos, X, Y, Width, Height, A

GuiControl, Text, Edit1, X: %X% Y: %Y% 
GuiControl, Text, Edit2, Width: %Width%
GuiControl, Text, Edit3, Height: %Height% 
return 
}
return  

GuiClose:
WinGetPos, X, Y, Width, Height, A
Clipboard := "X: " . X . " Y: " . Y . " Width: " . Width . " Height: " . Height
MsgBox,, Program Closing , Copied to clipboard!, 0.25
ExitApp

