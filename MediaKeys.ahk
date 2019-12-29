; Copyright 2019 WeedRapist
; MediaKeysOnlyPlusSpotify.ahk is licensed under the terms of the MIT License. See LICENSE for more information.
;
; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED
; TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
; THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF
; CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
; DEALINGS IN THE SOFTWARE.

;;;;;;;; Initialize ;;;;;;;;

;;auto-execute
SetDefaults()
return

SetDefaults()
{
    global
    PreClickDelay := 0, PostClickDelay := 150, Step := 10, UseMediaKeys := true, UseSpotify := true
    NumArgs := A_Args.Length()
    if (NumArgs < 4 || NumArgs > 4)
        return
    Mode := A_Args[1]
    if (not InStr(Mode, "MediaKeys"))
        UseMediaKeys := false
    if (not InStr(Mode,"Spotify"))
        UseSpotify := false
    PreClickDelay := A_Args[2]
    PostClickDelay := A_Args[3]
    Step := A_Args[4]
    return
 }

;;;;;;;; MediaKeys ;;;;;;;;

#If UseMediaKeys == true

;previous song, Control+LeftBracket
^[::
Send {Media_Prev}
return

;play/pause, Control+Backslash
^\::
Send {Media_Play_Pause}
return

;next song, Control+RightBracket
^]::
Send {Media_Next}
return

;volume up, Control+RightApostrophe
^'::
Send {Volume_Up}
return

;volume down, Control+Semicolon
^;::
Send {Volume_Down}
return

;volume mute, Control+Shift+Semicolon
^+;::
Send {Volume_Mute}
return

#If

;;;;;;;; Spotify ;;;;;;;;

Add_PostClickDelay()
{
    global PostClickDelay, Step
    PostClickDelay := PostClickDelay + Step
    DisplayDelayValues()
}

Sub_PostClickDelay()
{
    global PostClickDelay, Step
    PostClickDelay := PostClickDelay - Step
    if (PostClickDelay < 0)
        PostClickDelay = 0
    DisplayDelayValues()
}

Add_PreClickDelay()
{
    global PreClickDelay, Step
    PreClickDelay := PreClickDelay + Step
    DisplayDelayValues()
}

Sub_PreClickDelay()
{
    global PreClickDelay, Step
    PreClickDelay := PreClickDelay - Step
    if (PreClickDelay < 0)
        PreClickDelay = 0
    DisplayDelayValues()
}

DisplayDelayValues()
{
    global PreClickDelay, PostClickDelay
    MsgBox, , Delay, PreClickDelay %PreClickDelay% PostClickDelay %PostClickDelay%, 1
}

#If UseSpotify == true and WinActive("ahk_exe Spotify.exe")

;add Step to PostClickDelay
^W::
Add_PostClickDelay()
return

;subtract Step from PostClickDelay
^+W::
Sub_PostClickDelay()
return

;add Step to PreClickDelay
^S::
Add_PreClickDelay()
return

;subtract Step from PreClickDelay
^+S::
Sub_PreClickDelay()
return

;adds song under mouse cursor to queue when Control+Q is pressed
^Q::
BlockInput, On
Sleep 10
Click, Right
Sleep, 250
Send, {Down}
Send, {Enter}
BlockInput, Off
return

;Spotify: removes song under mouse cursor to queue when Control+A is pressed
^A::
BlockInput, On
Sleep 10
Click, Right
Sleep, 250
Send, {Up}
Send, {Up}
Send, {Enter}
BlockInput, Off
return

#If
