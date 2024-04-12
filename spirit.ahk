Toggle1 := False
Toggle2 := False
Toggle3 := False
Countdown1 := 5
Countdown2 := 5
Countdown3 := 5

Gui, Add, Button, x60 y10 w200 h40 gToggleScript1, Speed Training
Gui, Add, Text, x60 y60 w200 h30 Center vCountdownText1, Countdown: %Countdown1%
Gui, Add, Button, x60 y100 w200 h40 gToggleScript2, Power Training
Gui, Add, Text, x60 y140 w200 h30 Center vCountdownText2, Countdown: %Countdown2%
Gui, Add, Button, x60 y180 w200 h40 gToggleScript3, Endurance Training
Gui, Add, Text, x60 y220 w200 h30 Center vCountdownText3, Countdown: %Countdown3%
Gui, Show, w320 h300, Spirit macro   ; 
return

ToggleScript1:
    Toggle1 := !Toggle1
    If (Toggle1)
    {
        Countdown1 := 3 ;
        GuiControl,, CountdownText1, Countdown: %Countdown1%
        SetTimer, StartCountdown1, 1000  ; 
        GuiControl,, 1, Toggle (On)
    }
    Else
    {
        SetTimer, PerformAction1, Off
        GuiControl,, 1, Toggle (Off)
    }
return

ToggleScript2:
    Toggle2 := !Toggle2
    If (Toggle2)
    {
        Countdown2 := 5 ; 
        GuiControl,, CountdownText2, Countdown: %Countdown2%
        SetTimer, StartCountdown2, 1000  ; 
        GuiControl,, 2, Toggle (On)
    }
    Else
    {
        SetTimer, PerformAction2, Off
        GuiControl,, 2, Toggle (Off)
    }
return

ToggleScript3:
    Toggle3 := !Toggle3
    If (Toggle3)
    {
        Countdown3 := 5 ; 
        GuiControl,, CountdownText3, Countdown: %Countdown3%
        SetTimer, StartCountdown3, 1000  ; 
        GuiControl,, 3, Toggle (On)
    }
    Else
    {
        SetTimer, PerformAction3, Off
        GuiControl,, 3, Toggle (Off)
    }
return

StartCountdown1:
    Countdown1-- ;
    GuiControl,, CountdownText1, Countdown: %Countdown1%
    If (Countdown1 = 0)
    {
        SetTimer, StartCountdown1, Off
        SetTimer, PerformAction1, 1000  ; 
    }
return

PerformAction1:
    Send, e    ; 
    Sleep, 420    ; 
    Click    ; 
    Send, e    ; 
    Sleep, 320    ; 
    Click    ;
    Send, 1    ; 
    Send, {Space}
    Send, {Space}
    Send, {Space}
    Sleep, 2000    ;
    Send, 1    ; 
    UpdateCountdown1()  ;
return

UpdateCountdown1() {
    ; 
}

StartCountdown2:
    Countdown2-- ; 
    GuiControl,, CountdownText2, Countdown: %Countdown2%
    If (Countdown2 = 0)
    {
        SetTimer, StartCountdown2, Off
        SetTimer, PerformAction2, 1000  ; 
    }
return

PerformAction2:
    Send, e            ; 
    Sleep, 400        ; 
    Click down         ; 
    Sleep, 850        ; 
    Click up           ; 
    Send, e            ; 
    Send, {Space}
    Send, {Space}
    Send, {Space}
    Sleep, 2000        ; 
    UpdateCountdown2()  ; 
return

UpdateCountdown2() {
    ; 
}

StartCountdown3:
    Countdown3-- ; 
    GuiControl,, CountdownText3, Countdown: %Countdown3%
    If (Countdown3 = 0)
    {
        SetTimer, StartCountdown3, Off
        SetTimer, PerformAction3, 1000  ; 
    }
return

PerformAction3:
    Send, 1            ; 
    Send, e            ; 
    Sleep, 600        ; 
    Click down         ; 
    Sleep, 850        ; 
    Click up           ; 
    Send, e            ; 
    Send, {Space}
    Send, {Space}
    Send, {Space}
    Sleep, 2500        ; 
    UpdateCountdown3()  ; 
return

UpdateCountdown3() {
    ; 
}

GuiClose:
    ExitApp
return
