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
Gui, Show, w320 h300, Spirit macro   ; Change "Spirit macro" to your desired name
return

ToggleScript1:
    Toggle1 := !Toggle1
    If (Toggle1)
    {
        Countdown1 := 3 ; Reset countdown to 3 when starting
        GuiControl,, CountdownText1, Countdown: %Countdown1%
        SetTimer, StartCountdown1, 1000  ; Start countdown timer
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
        Countdown2 := 5 ; Reset countdown to 5 when starting
        GuiControl,, CountdownText2, Countdown: %Countdown2%
        SetTimer, StartCountdown2, 1000  ; Start countdown timer
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
        Countdown3 := 5 ; Reset countdown to 5 when starting
        GuiControl,, CountdownText3, Countdown: %Countdown3%
        SetTimer, StartCountdown3, 1000  ; Start countdown timer
        GuiControl,, 3, Toggle (On)
    }
    Else
    {
        SetTimer, PerformAction3, Off
        GuiControl,, 3, Toggle (Off)
    }
return

StartCountdown1:
    Countdown1-- ; Decrease countdown by 1
    GuiControl,, CountdownText1, Countdown: %Countdown1%
    If (Countdown1 = 0)
    {
        SetTimer, StartCountdown1, Off
        SetTimer, PerformAction1, 1000  ; Start performing actions
    }
return

PerformAction1:
    Send, e    ; Presses the 'e' key
    Sleep, 420    ; Waits for 0.315 seconds (adjust as needed)
    Click    ; Left click
    Send, e    ; Presses the 'e' key again
    Sleep, 320    ; Waits for 0.315 seconds (adjust as needed)
    Click    ; Left click
    Send, 1    ; Presses the 'e' key
    Send, {Space}
    Send, {Space}
    Send, {Space}
    Sleep, 2000    ;
    Send, 1    ; Presses the 'e' key 
    UpdateCountdown1()  ; Update countdown display
return

UpdateCountdown1() {
    ; No need to update countdown during macro execution
}

StartCountdown2:
    Countdown2-- ; Decrease countdown by 1
    GuiControl,, CountdownText2, Countdown: %Countdown2%
    If (Countdown2 = 0)
    {
        SetTimer, StartCountdown2, Off
        SetTimer, PerformAction2, 1000  ; Start performing actions
    }
return

PerformAction2:
    Send, e            ; Presses the 'e' key
    Sleep, 400        ; Waits for 0.315 seconds (adjust as needed)
    Click down         ; Holds down the left mouse button
    Sleep, 850        ; Holds the left mouse button for 1 second (adjust as needed)
    Click up           ; Releases the left mouse button
    Send, e            ; Presses the 'e' key again
    Send, {Space}
    Send, {Space}
    Send, {Space}
    Sleep, 2000        ; Waits for 2 seconds (adjust as needed)
    UpdateCountdown2()  ; Update countdown display
return

UpdateCountdown2() {
    ; No need to update countdown during macro execution
}

StartCountdown3:
    Countdown3-- ; Decrease countdown by 1
    GuiControl,, CountdownText3, Countdown: %Countdown3%
    If (Countdown3 = 0)
    {
        SetTimer, StartCountdown3, Off
        SetTimer, PerformAction3, 1000  ; Start performing actions
    }
return

PerformAction3:
    Send, 1            ; Presses the 'e' key
    Send, e            ; Presses the 'e' key
    Sleep, 600        ; Waits for 0.315 seconds (adjust as needed)
    Click down         ; Holds down the left mouse button
    Sleep, 850        ; Holds the left mouse button for 1 second (adjust as needed)
    Click up           ; Releases the left mouse button
    Send, e            ; Presses the 'e' key again
    Send, {Space}
    Send, {Space}
    Send, {Space}
    Sleep, 2500        ; Waits for 2 seconds (adjust as needed)
    UpdateCountdown3()  ; Update countdown display
return

UpdateCountdown3() {
    ; No need to update countdown during macro execution
}

GuiClose:
    ExitApp
return
